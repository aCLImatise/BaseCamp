class: CommandLineTool
id: faFilter.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: invert
  doc: ', select non-matching records.'
  type: string
  inputBinding:
    prefix: '- invert'
- id: minsize
  doc: sequences at least this big.
  type: string
  inputBinding:
    prefix: -minSize
- id: maxsize
  doc: sequences this size or smaller.
  type: string
  inputBinding:
    prefix: -maxSize
- id: max_n
  doc: Only pass sequences with fewer than this number of N's
  type: string
  inputBinding:
    prefix: -maxN
- id: removes
  doc: sequence ids, keeping the first.
  type: string
  inputBinding:
    prefix: '- Removes'
- id: i
  doc: '- make -uniq ignore case so sequence IDs ABC and abc count as dupes.'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- faFilter
