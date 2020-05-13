class: CommandLineTool
id: FuzzyDiff.cwl
inputs:
- id: in1
  doc: '*         First input file'
  type: File
  inputBinding:
    prefix: -in1
- id: in2
  doc: '*         Second input file'
  type: File
  inputBinding:
    prefix: -in2
- id: ratio
  doc: "Acceptable relative error. Only one of 'ratio' or 'absdiff' has to be satisfied.\
    \  Use \"absdiff\" to deal with cases like \"zero vs. epsilon\". (default: '1'\
    \ min: '1')"
  type: string
  inputBinding:
    prefix: -ratio
- id: abs_diff
  doc: "Acceptable absolute difference. Only one of 'ratio' or 'absdiff' has to be\
    \ satisfied.  (default: '0' min: '0')"
  type: string
  inputBinding:
    prefix: -absdiff
- id: verbose
  doc: "Set verbose level: 0 = very quiet mode (absolutely no output) 1 = quiet mode\
    \ (no output unless differences detected) 2 = default (include summary at end)\
    \ 3 = continue after errors (default: '2' min: '0' max: '3')"
  type: long
  inputBinding:
    prefix: -verbose
- id: tab_width
  doc: "Tabulator width, used for calculation of column numbers (default: '8' min:\
    \ '1')"
  type: long
  inputBinding:
    prefix: -tab_width
- id: first_column
  doc: "Number of first column, used for calculation of column numbers (default: '1'\
    \ min: '0')"
  type: long
  inputBinding:
    prefix: -first_column
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- FuzzyDiff
