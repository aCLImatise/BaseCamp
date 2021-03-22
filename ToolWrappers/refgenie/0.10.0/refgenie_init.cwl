class: CommandLineTool
id: refgenie_init.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional\nif REFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_genome_folder
  doc: "Absolute path to parent folder refgenie-managed\nassets."
  type: Directory?
  inputBinding:
    prefix: --genome-folder
- id: in_genome_archive_folder
  doc: "Absolute path to parent archive folder refgenie-\nmanaged assets; used by\
    \ refgenieserver."
  type: Directory?
  inputBinding:
    prefix: --genome-archive-folder
- id: in_genome_archive_config
  doc: "Absolute path to desired archive config file; used\nby refgenieserver."
  type: File?
  inputBinding:
    prefix: --genome-archive-config
- id: in_remote_url_base
  doc: "URL to use as an alternative, remote archive\nlocation; used by refgenieserver."
  type: string?
  inputBinding:
    prefix: --remote-url-base
- id: in_settings_json
  doc: "Absolute path to a JSON file with the key value\npairs to inialize the configuration\
    \ file with.\nOverwritten by itemized specifications.\n"
  type: File?
  inputBinding:
    prefix: --settings-json
- id: in_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- init
