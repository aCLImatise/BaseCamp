class: CommandLineTool
id: cat.cwl
inputs:
- id: in_show_all
  doc: equivalent to -vET
  type: boolean?
  inputBinding:
    prefix: --show-all
- id: in_number_non_blank
  doc: number nonempty output lines, overrides -n
  type: boolean?
  inputBinding:
    prefix: --number-nonblank
- id: in_equivalent_to_ve
  doc: equivalent to -vE
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_show_ends
  doc: display $ at end of each line
  type: boolean?
  inputBinding:
    prefix: --show-ends
- id: in_number
  doc: number all output lines
  type: boolean?
  inputBinding:
    prefix: --number
- id: in_squeeze_blank
  doc: suppress repeated empty output lines
  type: boolean?
  inputBinding:
    prefix: --squeeze-blank
- id: in_equivalent_to_vt
  doc: equivalent to -vT
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_show_tabs
  doc: display TAB characters as ^I
  type: boolean?
  inputBinding:
    prefix: --show-tabs
- id: in_ignored
  doc: (ignored)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_show_non_printing
  doc: use ^ and M- notation, except for LFD and TAB
  type: boolean?
  inputBinding:
    prefix: --show-nonprinting
- id: in_cat
  doc: Copy standard input to standard output.
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
- cat
