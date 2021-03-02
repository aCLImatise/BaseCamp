class: CommandLineTool
id: refgenie_unsubscribe.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_genome_server
  doc: "One or more URLs to remove from the genome_servers\nattribute in config file.\n"
  type: string[]
  inputBinding:
    prefix: --genome-server
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refgenie
- unsubscribe
