class: CommandLineTool
id: prepReference.sh.cwl
inputs:
- id: reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prepReference.sh
