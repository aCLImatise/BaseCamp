class: CommandLineTool
id: bl_threshold.cwl
inputs:
- id: in_nonnegative_length
  doc: non-negative length
  type: long?
  inputBinding:
    prefix: -n
- id: in_file_print_reads
  doc: file to print short reads to
  type: File?
  inputBinding:
    prefix: -s
- id: in_threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bl-threshold
