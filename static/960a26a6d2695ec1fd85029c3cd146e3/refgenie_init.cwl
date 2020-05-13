class: CommandLineTool
id: refgenie_init.cwl
inputs:
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: genome_server
  doc: 'URL(s) to use for the http://refgenomes.databio.org attribute in config file.
    Default: genome_servers.'
  type: string[]
  inputBinding:
    prefix: --genome-server
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- init
