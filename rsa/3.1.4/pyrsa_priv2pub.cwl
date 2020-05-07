class: CommandLineTool
id: pyrsa_priv2pub.cwl
inputs:
- id: input
  doc: Input filename. Reads from stdin if not specified
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output filename. Writes to stdout of not specified
  type: string
  inputBinding:
    prefix: --output
- id: inform
  doc: key format of input - default PEM
  type: string
  inputBinding:
    prefix: --inform
- id: out_form
  doc: key format of output - default PEM
  type: string
  inputBinding:
    prefix: --outform
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrsa-priv2pub
