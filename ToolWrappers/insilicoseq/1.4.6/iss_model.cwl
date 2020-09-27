class: CommandLineTool
id: iss_model.cwl
inputs:
- id: in_quiet
  doc: 'Disable info logging. (default: False).'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: 'Enable debug logging. (default: False).'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_bam
  doc: "aligned reads from which the model will be inferred\n(Required)"
  type: string
  inputBinding:
    prefix: --bam
- id: in_output
  doc: "Output file prefix (Required)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file prefix (Required)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- iss
- model
