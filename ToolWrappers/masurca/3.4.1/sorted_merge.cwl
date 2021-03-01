class: CommandLineTool
id: sorted_merge.cwl
inputs:
- id: in_key
  doc: Key (1 base column number) for sorting (1)
  type: long?
  inputBinding:
    prefix: --key
- id: in_output
  doc: Output file instead of stdout (/dev/fd/1)
  type: File?
  inputBinding:
    prefix: --output
- id: in_numerical
  doc: Numerical sort (false)
  type: boolean?
  inputBinding:
    prefix: --numerical
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file instead of stdout (/dev/fd/1)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sorted_merge
