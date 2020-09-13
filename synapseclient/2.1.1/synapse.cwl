class: CommandLineTool
id: ../../../synapse.cwl
inputs:
- id: in_username
  doc: Username used to connect to Synapse
  type: string
  inputBinding:
    prefix: --username
- id: in_password
  doc: Password used to connect to Synapse
  type: string
  inputBinding:
    prefix: --password
- id: in_config_path
  doc: "Path to configuration file used to connect to Synapse\n[default: /root/.synapseConfig]"
  type: File
  inputBinding:
    prefix: --configPath
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_skip_checks
  doc: "suppress checking for version upgrade messages and\nendpoint redirection"
  type: boolean
  inputBinding:
    prefix: --skip-checks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
