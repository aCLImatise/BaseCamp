class: CommandLineTool
id: smof_filter.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: shorter_than
  doc: keep only if length is less than or equal to LEN
  type: string
  inputBinding:
    prefix: --shorter-than
- id: longer_than
  doc: keep only if length is greater than or equal to LEN
  type: string
  inputBinding:
    prefix: --longer-than
- id: composition
  doc: keep only if composition meets the condition (e.g. 'GC > .5')
  type: string
  inputBinding:
    prefix: --composition
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- filter
