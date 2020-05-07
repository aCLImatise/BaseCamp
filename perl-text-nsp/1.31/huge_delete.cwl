class: CommandLineTool
id: huge_delete.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: destination
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: remove
  doc: Bigrams with counts < L will be removed from sample.
  type: string
  inputBinding:
    prefix: --remove
- id: u_remove
  doc: Bigrams with counts > L will be removed from sample. -remove must be smaller
    than --uremove.
  type: string
  inputBinding:
    prefix: --uremove
- id: frequency
  doc: Bigrams with counts < F will not be displayed.
  type: string
  inputBinding:
    prefix: --frequency
- id: u_frequency
  doc: Bigrams with counts > F will not be displayed. --frequency must be smaller
    than --ufrequency.
  type: string
  inputBinding:
    prefix: --ufrequency
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-delete.pl
