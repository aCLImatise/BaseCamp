class: CommandLineTool
id: falconc_m4filt_merge_blacklist.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_blistfofn_string_required
  doc: =, --blistFofn=  string  REQUIRED  set blistFofn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__outfn_string
  doc: =, --outFn=      string  REQUIRED  set outFn
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_m_four_filt_merge_blacklist
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
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-merge-blacklist
