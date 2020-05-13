class: CommandLineTool
id: repeat_match.cwl
inputs:
- id: genome_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: e
  doc: Use exhaustive (slow) search to find matches
  type: boolean
  inputBinding:
    prefix: -E
- id: f
  doc: Forward strand only, don't use reverse complement
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: '#  Set minimum exact match length to #'
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: Only output tandem repeats
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: '#  Set level of verbose (debugging) printing to #'
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- repeat-match
