class: CommandLineTool
id: refgenieserver_archive.cwl
inputs:
- id: asset_registry_paths
  doc: One or more registry path strings that identify assets, e.g. hg38/fasta:tag
  type: string
  inputBinding:
    position: 0
- id: config
  doc: "A path to the refgenie config file (YAML). If not provided, the first available\
    \ environment variable among: 'REFGENIE' will be used if set. Currently: not set"
  type: string
  inputBinding:
    prefix: --config
- id: dbg
  doc: Set logger verbosity to debug
  type: boolean
  inputBinding:
    prefix: --dbg
- id: genomes_desc
  doc: 'Path to a CSV file with genomes descriptions. Format: genome_name, genome
    description'
  type: string
  inputBinding:
    prefix: --genomes-desc
- id: force
  doc: whether the server file tree should be rebuilt even if exists
  type: boolean
  inputBinding:
    prefix: --force
- id: remove
  doc: Remove selected genome, genome/asset or genome/asset:tag
  type: boolean
  inputBinding:
    prefix: --remove
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenieserver
- archive
