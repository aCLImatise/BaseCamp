class: CommandLineTool
id: ../../../isatab2dot.cwl
inputs:
- id: investigation_file
  doc: Path to investigation file
  type: string
  inputBinding:
    prefix: --investigation-file
- id: output_file
  doc: Path to output file, stdout ("-") by default
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- isatab2dot
