class: CommandLineTool
id: rnazFilter.pl.cwl
inputs:
- id: count
  doc: Count the windows/loci instead of printing them.
  type: boolean
  inputBinding:
    prefix: --count
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazFilter.pl
