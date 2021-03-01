class: CommandLineTool
id: rnazSort.pl.cwl
inputs:
- id: in_reverse
  doc: Sort in reverse order.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_no_loci
  doc: Do not preserve the locus grouping but simply sort the windows.
  type: boolean?
  inputBinding:
    prefix: --no-loci
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnazSort.pl
