class: CommandLineTool
id: pybel_machine.cwl
inputs:
- id: in_local
  doc: Upload to local database.
  type: boolean
  inputBinding:
    prefix: --local
- id: in_host
  doc: URL of BEL Commons. Defaults to https://bel-
  type: string
  inputBinding:
    prefix: --host
- id: in_commons_dots_cai_dot_fraunhofer_dot_de
  doc: --help       Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- machine
