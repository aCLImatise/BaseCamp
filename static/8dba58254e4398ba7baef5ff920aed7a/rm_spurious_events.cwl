class: CommandLineTool
id: ../../../rm_spurious_events.py.cwl
inputs:
- id: outfile
  doc: 'Write results to this file. (default: None)'
  type: string
  inputBinding:
    prefix: --outfile
- id: threshold
  doc: 'Threshold for spurious event removal. (default: 0.1)'
  type: string
  inputBinding:
    prefix: --threshold
- id: verbose
  doc: 'Be verbose. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Print lots of debugging information (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: events
  doc: Path to bed6 file containing alignments.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rm_spurious_events.py
