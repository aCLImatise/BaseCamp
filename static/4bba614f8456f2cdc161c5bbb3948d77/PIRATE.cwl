class: CommandLineTool
id: PIRATE.cwl
inputs:
- id: error
  doc: ': no input (-i) directory specified.'
  type: boolean
  inputBinding:
    prefix: '- ERROR'
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
- id: z
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
outputs: []
cwlVersion: v1.1
baseCommand:
- PIRATE
