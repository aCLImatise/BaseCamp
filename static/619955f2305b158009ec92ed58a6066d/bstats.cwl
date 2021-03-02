class: CommandLineTool
id: bstats.cwl
inputs:
- id: in__verbose
  doc: ': verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__sampling_iterations
  doc: ': Sampling iterations (100)'
  type: long?
  inputBinding:
    prefix: -i
- id: in_output_diff_data
  doc: ': Output diff data to <file>'
  type: File?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_diff_data
  doc: ': Output diff data to <file>'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_diff_data)
hints: []
cwlVersion: v1.1
baseCommand:
- bstats
