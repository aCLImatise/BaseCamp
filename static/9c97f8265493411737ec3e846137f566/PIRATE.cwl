class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PIRATE.cwl
inputs:
- id: threads
  doc: 'number of threads/cores used by PIRATE [default: 2]'
  type: boolean
  inputBinding:
    prefix: --threads
- id: quiet
  doc: switch off verbose
  type: boolean
  inputBinding:
    prefix: --quiet
- id: retain_intermediate_files
  doc: 'retain intermediate files [0 = none, 1 = retain pangenome  files (default
    - re-run using --pan-off), 2 = all]  '
  type: boolean
  inputBinding:
    prefix: -z
- id: check
  doc: check installation and run on example files
  type: boolean
  inputBinding:
    prefix: --check
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- PIRATE
