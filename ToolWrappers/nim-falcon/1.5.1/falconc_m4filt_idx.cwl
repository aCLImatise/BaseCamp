class: CommandLineTool
id: falconc_m4filt_idx.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__infn_string
  doc: "=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\n\
    '.idx' appended.\n"
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-idx
