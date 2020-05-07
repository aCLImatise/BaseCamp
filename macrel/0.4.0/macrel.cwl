class: CommandLineTool
id: macrel.cwl
inputs:
- id: command
  doc: Macrel command to execute (see documentation)
  type: string
  inputBinding:
    position: 0
- id: keep_fast_a_headers
  doc: 'Keep complete FASTA headers [get-smorfs command] (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-fasta-headers
- id: tmpdir
  doc: 'Temporary directory to use (default: $TMPDIR in the environment or /tmp) (default:
    None)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: keep_negatives
  doc: 'Whether to keep non-AMPs in the output (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-negatives
outputs: []
cwlVersion: v1.1
baseCommand:
- macrel
