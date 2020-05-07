class: CommandLineTool
id: refgenie_unsubscribe.cwl
inputs:
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: genome_server
  doc: One or more URLs to remove from the genome_servers attribute in config file.
  type: string[]
  inputBinding:
    prefix: --genome-server
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- unsubscribe
