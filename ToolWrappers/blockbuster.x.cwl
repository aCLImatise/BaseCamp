class: CommandLineTool
id: blockbuster.x.cwl
inputs:
- id: in_format
  doc: "file format of input file (default: 1)\n(1) bed\n(2) segemehl-output"
  type: long
  inputBinding:
    prefix: -format
- id: in_distance
  doc: 'minimum distance between two clusters (default: 30)'
  type: long
  inputBinding:
    prefix: -distance
- id: in_min_cluster_height
  doc: 'minimum height of a cluster (default: 10)'
  type: long
  inputBinding:
    prefix: -minClusterHeight
- id: in_min_block_height
  doc: 'minimum height of a block (default: 2)'
  type: long
  inputBinding:
    prefix: -minBlockHeight
- id: in_scale
  doc: 'scale stddev for a single read (default: 0.2)'
  type: long
  inputBinding:
    prefix: -scale
- id: in_merge
  doc: 'merge reads with almost similar means (default: 0)'
  type: long
  inputBinding:
    prefix: -merge
- id: in_tag_filter
  doc: 'skip tags with expression smaller than this value (default: 0)'
  type: long
  inputBinding:
    prefix: -tagFilter
- id: in_print
  doc: 'print out: (1) blocks (2) reads (default: 1)'
  type: long
  inputBinding:
    prefix: -print
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blockbuster.x
