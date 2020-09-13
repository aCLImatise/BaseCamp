class: CommandLineTool
id: ../../../nasp.cwl
inputs:
- id: in_config
  doc: Path to the configuration xml file.
  type: File
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nasp
