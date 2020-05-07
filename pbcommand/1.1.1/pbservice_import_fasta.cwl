class: CommandLineTool
id: pbservice_import_fasta.cwl
inputs:
- id: fast_a_path
  doc: Path to Fasta File
  type: string
  inputBinding:
    position: 0
- id: name
  doc: 'Name of ReferenceSet (default: None)'
  type: string
  inputBinding:
    prefix: --name
- id: organism
  doc: 'Organism (default: None)'
  type: string
  inputBinding:
    prefix: --organism
- id: ploidy
  doc: 'Ploidy (default: None)'
  type: string
  inputBinding:
    prefix: --ploidy
- id: block
  doc: 'Block during importing process (default: False)'
  type: boolean
  inputBinding:
    prefix: --block
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
- import-fasta
