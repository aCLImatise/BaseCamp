class: CommandLineTool
id: oc_gui.cwl
inputs:
- id: in_multiuser
  doc: Runs in multiuser mode
  type: boolean?
  inputBinding:
    prefix: --multiuser
- id: in_headless
  doc: do not open the cravat web page
  type: boolean?
  inputBinding:
    prefix: --headless
- id: in_http_only
  doc: Force not to accept https connection
  type: boolean?
  inputBinding:
    prefix: --http-only
- id: in_debug
  doc: Console echoes exceptions written to log file.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_webapp
  doc: Name of OpenCRAVAT webapp module to run
  type: string?
  inputBinding:
    prefix: --webapp
- id: in_result
  doc: Path to a CRAVAT result SQLite file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oc
- gui
