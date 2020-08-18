class: CommandLineTool
id: ../../../extract_aln_ends.py.cwl
inputs:
- id: outfile
  doc: 'Write results to this file. (default: None)'
  type: string
  inputBinding:
    prefix: --outfile
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
- id: in_file
  doc: Path to alignments in SAM or BAM format.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_aln_ends.py
