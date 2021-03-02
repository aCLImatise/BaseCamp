class: CommandLineTool
id: falconc_ovl_cov_stats.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_infn_string_required
  doc: "=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of\
    \ M4\nfiles.\n"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_ovl_cov_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- ovl-cov-stats
