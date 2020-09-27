class: CommandLineTool
id: huge_delete.pl.cwl
inputs:
- id: in_remove
  doc: Bigrams with counts < L will be removed from sample.
  type: string
  inputBinding:
    prefix: --remove
- id: in_u_remove
  doc: Bigrams with counts > L will be removed from sample.
  type: string
  inputBinding:
    prefix: --uremove
- id: in_frequency
  doc: Bigrams with counts < F will not be displayed.
  type: string
  inputBinding:
    prefix: --frequency
- id: in_u_frequency
  doc: Bigrams with counts > F will not be displayed.
  type: string
  inputBinding:
    prefix: --ufrequency
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- huge-delete.pl
