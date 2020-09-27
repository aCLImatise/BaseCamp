class: CommandLineTool
id: dnp_corrprofile.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_window
  doc: 'Sliding window size, < than length. In range [10..146]. Default: 10.'
  type: long
  inputBinding:
    prefix: --window
- id: in_length
  doc: "Dinucleotide profile sequence length. In range [25..600]. Default:\n600."
  type: long
  inputBinding:
    prefix: --length
- id: in_verbose
  doc: Print parameters and variables.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_window_dot
  doc: REQUIRED ARGUMENTS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dnp-corrprofile
