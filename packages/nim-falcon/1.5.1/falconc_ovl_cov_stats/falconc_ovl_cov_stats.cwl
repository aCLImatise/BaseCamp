class: CommandLineTool
id: falconc_ovl_cov_stats.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__infn_string
  doc: "=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of\
    \ M4\nfiles.\n"
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
- ovl-cov-stats
