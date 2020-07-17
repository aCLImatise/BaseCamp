class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mashtree_bootstrap.pl.cwl
inputs:
- id: seed
  doc: 42   Seed for mash sketch
  type: boolean
  inputBinding:
    prefix: --seed
- id: save_sketches
  doc: "''   If a directory is supplied, then sketches will be saved in it. If no\
    \ directory is supplied, then sketches will be saved alongside source files."
  type: boolean
  inputBinding:
    prefix: --save-sketches
outputs: []
cwlVersion: v1.1
baseCommand:
- mashtree_bootstrap.pl
