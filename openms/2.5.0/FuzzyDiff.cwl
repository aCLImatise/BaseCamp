#!/usr/bin/env cwl-runner

baseCommand:
- FuzzyDiff
class: CommandLineTool
cwlVersion: v1.0
id: fuzzydiff
inputs:
- doc: '*         First input file'
  id: in1
  inputBinding:
    prefix: -in1
  type: File
- doc: '*         Second input file'
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: "Acceptable relative error. Only one of 'ratio' or 'absdiff' has to be satisfied.\
    \  Use \"absdiff\" to deal with cases like \"zero vs. epsilon\". (default: '1.0'\
    \ min: '1.0')"
  id: ratio
  inputBinding:
    prefix: -ratio
  type: string
- doc: "Acceptable absolute difference. Only one of 'ratio' or 'absdiff' has to be\
    \ satisfied.  (default: '0.0' min: '0.0')"
  id: abs_diff
  inputBinding:
    prefix: -absdiff
  type: string
- doc: "Set verbose level: 0 = very quiet mode (absolutely no output) 1 = quiet mode\
    \ (no output unless differences detected) 2 = default (include summary at end)\
    \ 3 = continue after errors (default: '2' min: '0' max: '3')"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: long
- doc: "Tabulator width, used for calculation of column numbers (default: '8' min:\
    \ '1')"
  id: tab_width
  inputBinding:
    prefix: -tab_width
  type: long
- doc: "Number of first column, used for calculation of column numbers (default: '1'\
    \ min: '0')"
  id: first_column
  inputBinding:
    prefix: -first_column
  type: long
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
