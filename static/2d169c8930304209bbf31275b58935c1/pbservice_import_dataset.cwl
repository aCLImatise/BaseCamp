class: CommandLineTool
id: pbservice_import_dataset.cwl
inputs:
- id: xml_or_dir
  doc: Directory or XML file.
  type: string
  inputBinding:
    position: 0
- id: host
  doc: 'Server host. Override the default with env PB_SERVICE_HOST (default: http://localhost)'
  type: string
  inputBinding:
    prefix: --host
- id: port
  doc: 'Server Port. Override default with env PB_SERVICE_PORT (default: 8070)'
  type: string
  inputBinding:
    prefix: --port
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- pbservice
- import-dataset
