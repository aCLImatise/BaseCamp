class: CommandLineTool
id: refgenie_add.cwl
inputs:
- id: asset_registry_paths
  doc: One or more registry path strings that identify assets (e.g. hg38/fasta or
    hg38/fasta:tag).
  type: string
  inputBinding:
    position: 0
- id: genome_config
  doc: Path to local genome configuration file. Optional if REFGENIE environment variable
    is set.
  type: string
  inputBinding:
    prefix: --genome-config
- id: genome
  doc: Reference assembly ID, e.g. mm10.
  type: string
  inputBinding:
    prefix: --genome
- id: path
  doc: Relative local path to asset.
  type: File
  inputBinding:
    prefix: --path
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- add
