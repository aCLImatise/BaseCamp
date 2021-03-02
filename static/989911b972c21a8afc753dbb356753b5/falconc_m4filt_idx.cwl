class: CommandLineTool
id: falconc_m4filt_idx.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_infn_string_required
  doc: "=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\n\
    '.idx' appended.\n"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_m_four_filt_idx
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-idx
