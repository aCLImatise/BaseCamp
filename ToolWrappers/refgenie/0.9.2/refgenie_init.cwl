class: CommandLineTool
id: refgenie_init.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_genome_server
  doc: "URL(s) to use for the genome_servers attribute in\nconfig file. Default: http://refgenomes.databio.org."
  type: string[]
  inputBinding:
    prefix: --genome-server
- id: in_genome_folder
  doc: "Absolute path to parent folder refgenie-managed\nassets."
  type: Directory
  inputBinding:
    prefix: --genome-folder
- id: in_genome_archive_folder
  doc: "Absolute path to parent archive folder refgenie-\nmanaged assets; used by\
    \ refgenieserver."
  type: Directory
  inputBinding:
    prefix: --genome-archive-folder
- id: in_genome_archive_config
  doc: "Absolute path to desired archive config file; used by\nrefgenieserver."
  type: File
  inputBinding:
    prefix: --genome-archive-config
- id: in_remote_url_base
  doc: "URL to use as an alternative, remote archive location;\nused by refgenieserver."
  type: string
  inputBinding:
    prefix: --remote-url-base
- id: in_settings_json
  doc: "Absolute path to a JSON file with the key value pairs\nto inialize the configuration\
    \ file with. Overwritten\nby itemized specifications.\n"
  type: File
  inputBinding:
    prefix: --settings-json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
- init
