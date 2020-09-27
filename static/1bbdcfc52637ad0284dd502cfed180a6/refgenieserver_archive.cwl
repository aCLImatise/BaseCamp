class: CommandLineTool
id: refgenieserver_archive.cwl
inputs:
- id: in_config
  doc: "A path to the refgenie config file (YAML). If not\nprovided, the first available\
    \ environment variable\namong: 'REFGENIE' will be used if set. Currently: not\n\
    set"
  type: File
  inputBinding:
    prefix: --config
- id: in_dbg
  doc: Set logger verbosity to debug
  type: boolean
  inputBinding:
    prefix: --dbg
- id: in_genomes_desc
  doc: "Path to a CSV file with genomes descriptions. Format:\ngenome_name, genome\
    \ description"
  type: File
  inputBinding:
    prefix: --genomes-desc
- id: in_force
  doc: whether the server file tree should be rebuilt even if
  type: boolean
  inputBinding:
    prefix: --force
- id: in_asset_registry_paths
  doc: "One or more registry path strings that identify\nassets, e.g. hg38/fasta:tag"
  type: string
  inputBinding:
    position: 0
- id: in_exists
  doc: -r, --remove          Remove selected genome, genome/asset or
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenieserver
- archive
