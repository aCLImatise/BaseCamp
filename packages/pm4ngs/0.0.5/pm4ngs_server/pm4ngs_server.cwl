class: CommandLineTool
id: pm4ngs_server.cwl
inputs:
- id: in_no_browser
  doc: Don't open the notebook in a browser after startup
  type: boolean?
  inputBinding:
    prefix: --no_browser
- id: in_ip
  doc: 'The IP address the notebook server will listen on. Default:'
  type: string?
  inputBinding:
    prefix: --ip
- id: in_port
  doc: ''
  type: string?
  inputBinding:
    prefix: --port
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_localhost
  doc: '--port PORT    The port the notebook server will listen on. Default: 8888'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pm4ngs:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- pm4ngs-server
