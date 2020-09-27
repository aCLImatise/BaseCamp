class: CommandLineTool
id: rascaf_join.cwl
inputs:
- id: in_path_rascaf_output
  doc: ': the path to the rascaf output. Can use multiple of -r. (required)'
  type: File
  inputBinding:
    prefix: -r
- id: in_prefix_output_file
  doc: ': the prefix of the output file. (default: rascaf_scaffold)'
  type: File
  inputBinding:
    prefix: -o
- id: in_ms
  doc: ': minimum support alignments for the connection (default: 2)'
  type: long
  inputBinding:
    prefix: -ms
- id: in_ignore_gap
  doc: ': ignore the gap size, which do not consider the number of Ns between contigs
    (default: not used)'
  type: boolean
  inputBinding:
    prefix: -ignoreGap
- id: in_ras_caf_join
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_rascaf_output
  doc: ': the path to the rascaf output. Can use multiple of -r. (required)'
  type: File
  outputBinding:
    glob: $(inputs.in_path_rascaf_output)
- id: out_prefix_output_file
  doc: ': the prefix of the output file. (default: rascaf_scaffold)'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix_output_file)
cwlVersion: v1.1
baseCommand:
- rascaf-join
