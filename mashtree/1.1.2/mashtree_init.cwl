class: CommandLineTool
id: mashtree_init.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mashtree_init.pl
