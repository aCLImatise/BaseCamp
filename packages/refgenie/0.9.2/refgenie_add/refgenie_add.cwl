class: CommandLineTool
id: ../../../refgenie_add.cwl
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
- id: in_path
  doc: Relative local path to asset.
  type: File
  inputBinding:
    prefix: --path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
- add
