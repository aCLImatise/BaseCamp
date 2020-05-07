class: CommandLineTool
id: rnazSort.pl.cwl
inputs:
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: reverse
  doc: Sort in reverse order.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: no_loci
  doc: Do not preserve the locus grouping but simply sort the windows.
  type: boolean
  inputBinding:
    prefix: --no-loci
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazSort.pl
