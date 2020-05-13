class: CommandLineTool
id: refgenie_pull.cwl
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
- id: no_untar
  doc: Do not extract tarballs.
  type: boolean
  inputBinding:
    prefix: --no-untar
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
- pull
