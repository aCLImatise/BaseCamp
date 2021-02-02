class: CommandLineTool
id: refgenie_remove.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long
  inputBinding:
    prefix: --genome
- id: in_force
  doc: Do not prompt before action, approve upfront.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_asset_registry_paths
  doc: "One or more registry path strings that identify assets\n(e.g. hg38/fasta or\
    \ hg38/fasta:tag)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
- remove
