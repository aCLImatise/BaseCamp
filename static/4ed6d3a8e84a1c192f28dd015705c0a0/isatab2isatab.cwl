class: CommandLineTool
id: isatab2isatab.cwl
inputs:
- id: input_investigation_file
  doc: Path to input investigation file
  type: string
  inputBinding:
    prefix: --input-investigation-file
- id: output_investigation_file
  doc: Path to output investigation file, stdout ("-") by default. Needs to be in
    a different directory!
  type: string
  inputBinding:
    prefix: --output-investigation-file
- id: quotes
  doc: Character for quoting, e.g. "\"" (None by default)
  type: string
  inputBinding:
    prefix: --quotes
- id: no_warnings
  doc: Suppress ISA-tab related warnings (False by default)
  type: boolean
  inputBinding:
    prefix: --no-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- isatab2isatab
