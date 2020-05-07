class: CommandLineTool
id: cat.cwl
inputs:
- id: show_all
  doc: equivalent to -vET
  type: boolean
  inputBinding:
    prefix: --show-all
- id: number_non_blank
  doc: number nonempty output lines, overrides -n
  type: boolean
  inputBinding:
    prefix: --number-nonblank
- id: e
  doc: equivalent to -vE
  type: boolean
  inputBinding:
    prefix: -e
- id: show_ends
  doc: display $ at end of each line
  type: boolean
  inputBinding:
    prefix: --show-ends
- id: number
  doc: number all output lines
  type: boolean
  inputBinding:
    prefix: --number
- id: squeeze_blank
  doc: suppress repeated empty output lines
  type: boolean
  inputBinding:
    prefix: --squeeze-blank
- id: t
  doc: to -vT
  type: string
  inputBinding:
    prefix: -t
- id: show_tabs
  doc: TAB characters as ^I
  type: string
  inputBinding:
    prefix: --show-tabs
- id: u
  doc: (ignored)
  type: boolean
  inputBinding:
    prefix: -u
- id: show_non_printing
  doc: ^ and M- notation, except for LFD and TAB
  type: string
  inputBinding:
    prefix: --show-nonprinting
outputs: []
cwlVersion: v1.1
baseCommand:
- cat
