class: CommandLineTool
id: alfred_tracks.cwl
inputs:
- id: in_arg_min_quality
  doc: '[ --map-qual ] arg (=10)           min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_pairs_normalize
  doc: "[ --normalize ] arg (=30000000)    #pairs to normalize to (0: no\nnormalization)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_coverage_type
  doc: "[ --covtype ] arg (=0)             coverage type (0: sequencing coverage,\n\
    1: spanning coverage, 2: footprinting)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_fractional_resolution
  doc: "[ --resolution ] arg (=0.200000003)\nfractional resolution ]0,1]"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_track_file
  doc: '[ --outfile ] arg (="track.gz")    track file'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_f
  doc: '[ --format ] arg (=bedgraph)       output format [bedgraph|bed|wiggle|raw]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_aligned_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alfred
- tracks
