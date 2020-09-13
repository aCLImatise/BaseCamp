class: CommandLineTool
id: ../../../halRandGen.cwl
inputs:
- id: in_preset
  doc: <small, medium, big, large> [medum]
  type: boolean
  inputBinding:
    prefix: --preset
- id: in_mean_degree
  doc: '[1.25]'
  type: double
  inputBinding:
    prefix: --meanDegree
- id: in_max_branch_length
  doc: '[0.7]'
  type: double
  inputBinding:
    prefix: --maxBranchLength
- id: in_max_genomes
  doc: '[20]'
  type: long
  inputBinding:
    prefix: --maxGenomes
- id: in_min_segment_length
  doc: '[2]'
  type: long
  inputBinding:
    prefix: --minSegmentLength
- id: in_max_segment_length
  doc: '[50]'
  type: long
  inputBinding:
    prefix: --maxSegmentLength
- id: in_max_segments
  doc: '[50000]'
  type: long
  inputBinding:
    prefix: --maxSegments
- id: in_min_segments
  doc: '[1000]'
  type: long
  inputBinding:
    prefix: --minSegments
- id: in_hdf_five_chunk
  doc: '[2000000]'
  type: long
  inputBinding:
    prefix: --hdf5Chunk
- id: in_hdf_five_compression
  doc: '[9]'
  type: long
  inputBinding:
    prefix: --hdf5Compression
- id: in_seed
  doc: '[system time]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_hal_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path_of_ouput_hal_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halRandGen
