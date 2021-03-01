class: CommandLineTool
id: pyrsa_priv2pub.cwl
inputs:
- id: in_input
  doc: Input filename. Reads from stdin if not specified
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output filename. Writes to stdout of not specified
  type: File?
  inputBinding:
    prefix: --output
- id: in_inform
  doc: key format of input - default PEM
  type: string?
  inputBinding:
    prefix: --inform
- id: in_out_form
  doc: key format of output - default PEM
  type: string?
  inputBinding:
    prefix: --outform
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename. Writes to stdout of not specified
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pyrsa-priv2pub
