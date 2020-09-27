class: CommandLineTool
id: rm_spurious_events.py.cwl
inputs:
- id: in_outfile
  doc: 'Write results to this file. (default: None)'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_threshold
  doc: 'Threshold for spurious event removal. (default: 0.1)'
  type: double
  inputBinding:
    prefix: --threshold
- id: in_verbose
  doc: 'Be verbose. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Print lots of debugging information (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_duplicates
  doc: 'Output:'
  type: string
  inputBinding:
    position: 0
- id: in_events
  doc: Path to bed6 file containing alignments.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rm_spurious_events.py
