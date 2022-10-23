#!/bin/bash

IMG="/home/eric/repos/stable-diffusion/outputs/txt2img-samples/Portrait_of_a_geometric_wolf,_identical_eyes,_medium_shot,_illustration,_symmetrical,_art_stand,_super_detailed,_cinematic_lig/seed_27_00000.png"
PROMPT="Portrait of a geometric wolf, identical eyes, medium shot, illustration, symmetrical, art stand, super detailed, cinematic lighting, and its detailed and intricate, gorgeous, by peter mohrbacher"

for s in $(seq 1.0 .05 1.0); do
    echo $s; 
    echo "======================="
    python optimizedSD/optimized_img2img.py --prompt "${PROMPT}" --init-img $IMG  --strength $s --n_iter 1 --n_samples 10 --ddim_steps 200 --H 512 --W 512 --seed 101 --outdir outputs/img2img-samples-$s --turbo
done

