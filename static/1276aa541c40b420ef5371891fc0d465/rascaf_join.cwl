class: CommandLineTool
id: ../../../rascaf_join.cwl
inputs:
- id: path_rascaf_output
  doc: ': the path to the rascaf output. Can use multiple of -r. (required)'
  type: string
  inputBinding:
    prefix: -r
- id: prefix_output_file
  doc: ': the prefix of the output file. (default: rascaf_scaffold)'
  type: string
  inputBinding:
    prefix: -o
- id: ms
  doc: ': minimum support alignments for the connection (default: 2)'
  type: long
  inputBinding:
    prefix: -ms
- id: ignore_gap
  doc: ': ignore the gap size, which do not consider the number of Ns between contigs
    (default: not used)'
  type: boolean
  inputBinding:
    prefix: -ignoreGap
- id: ras_caf_join
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rascaf-join
