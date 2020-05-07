class: CommandLineTool
id: mashtree_wrapper_deprecated.pl.cwl
inputs:
- id: genome_size
  doc: '5000000'
  type: boolean
  inputBinding:
    prefix: --genomesize
- id: min_depth
  doc: 5    If mindepth is zero, then it will be chosen in a smart but slower method,
    to discard lower-abundance kmers.
  type: boolean
  inputBinding:
    prefix: --mindepth
- id: km_er_length
  doc: '21'
  type: boolean
  inputBinding:
    prefix: --kmerlength
- id: sketch_size
  doc: '10000'
  type: boolean
  inputBinding:
    prefix: --sketch-size
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
- mashtree_wrapper_deprecated.pl
