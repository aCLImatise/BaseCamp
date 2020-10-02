class: CommandLineTool
id: isatab2isatab.cwl
inputs:
- id: in_input_investigation_file
  doc: Path to input investigation file
  type: File
  inputBinding:
    prefix: --input-investigation-file
- id: in_output_investigation_file
  doc: "Path to output investigation file, stdout (\"-\") by\ndefault. Needs to be\
    \ in a different directory!"
  type: File
  inputBinding:
    prefix: --output-investigation-file
- id: in_quotes
  doc: Character for quoting, e.g. "\"" (None by default)
  type: string
  inputBinding:
    prefix: --quotes
- id: in_no_warnings
  doc: Suppress ISA-tab related warnings (False by default)
  type: boolean
  inputBinding:
    prefix: --no-warnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_investigation_file
  doc: "Path to output investigation file, stdout (\"-\") by\ndefault. Needs to be\
    \ in a different directory!"
  type: File
  outputBinding:
    glob: $(inputs.in_output_investigation_file)
cwlVersion: v1.1
baseCommand:
- isatab2isatab
