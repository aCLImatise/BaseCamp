class: CommandLineTool
id: FuzzyDiff.cwl
inputs:
- id: in_in_one
  doc: '*         First input file'
  type: File
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: '*         Second input file'
  type: File
  inputBinding:
    prefix: -in2
- id: in_ratio
  doc: "Acceptable relative error. Only one of 'ratio' or 'absdiff' has to be satisfied.\
    \  Use \"absdiff\" to deal with cases like \"zero vs. epsilon\". (default: '1.0'\
    \ min: '1.0')"
  type: long
  inputBinding:
    prefix: -ratio
- id: in_abs_diff
  doc: "Acceptable absolute difference. Only one of 'ratio' or 'absdiff' has to be\
    \ satisfied.  (default: '0.0' min: '0.0')"
  type: long
  inputBinding:
    prefix: -absdiff
- id: in_verbose
  doc: "Set verbose level:\n0 = very quiet mode (absolutely no output)\n1 = quiet\
    \ mode (no output unless differences detected)\n2 = default (include summary at\
    \ end)\n3 = continue after errors\n(default: '2' min: '0' max: '3')"
  type: long
  inputBinding:
    prefix: -verbose
- id: in_tab_width
  doc: "Tabulator width, used for calculation of column numbers (default: '8' min:\
    \ '1')"
  type: long
  inputBinding:
    prefix: -tab_width
- id: in_first_column
  doc: "Number of first column, used for calculation of column numbers (default: '1'\
    \ min: '0')"
  type: long
  inputBinding:
    prefix: -first_column
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FuzzyDiff
