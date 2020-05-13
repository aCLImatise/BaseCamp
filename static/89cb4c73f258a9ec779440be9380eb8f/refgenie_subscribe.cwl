class: CommandLineTool
id: refgenie_subscribe.cwl
inputs:
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: reset
  doc: Overwrite the current list of server URLs.
  type: boolean
  inputBinding:
    prefix: --reset
- id: genome_server
  doc: One or more URLs to add to the genome_servers attribute in config file.
  type: string[]
  inputBinding:
    prefix: --genome-server
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- subscribe
