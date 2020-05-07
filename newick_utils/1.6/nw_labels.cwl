class: CommandLineTool
id: nw_labels.cwl
inputs:
- id: i
  doc: ": don't print labels of inner nodes"
  type: boolean
  inputBinding:
    prefix: -I
- id: l
  doc: ": don't print leaf labels"
  type: boolean
  inputBinding:
    prefix: -L
- id: r
  doc: ": print only the root's label"
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: ': TAB-separated - print on a single line, separated by tab stops.'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_labels
