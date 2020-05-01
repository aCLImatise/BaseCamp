#!/usr/bin/env cwl-runner

baseCommand:
- cat
class: CommandLineTool
cwlVersion: v1.0
id: cat
inputs:
- doc: equivalent to -vET
  id: show_all
  inputBinding:
    prefix: --show-all
  type: boolean
- doc: number nonempty output lines, overrides -n
  id: number_non_blank
  inputBinding:
    prefix: --number-nonblank
  type: boolean
- doc: equivalent to -vE
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: display $ at end of each line
  id: show_ends
  inputBinding:
    prefix: --show-ends
  type: boolean
- doc: number all output lines
  id: number
  inputBinding:
    prefix: --number
  type: boolean
- doc: suppress repeated empty output lines
  id: squeeze_blank
  inputBinding:
    prefix: --squeeze-blank
  type: boolean
- doc: to -vT
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: TAB characters as ^I
  id: show_tabs
  inputBinding:
    prefix: --show-tabs
  type: string
- doc: (ignored)
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ^ and M- notation, except for LFD and TAB
  id: show_non_printing
  inputBinding:
    prefix: --show-nonprinting
  type: string
