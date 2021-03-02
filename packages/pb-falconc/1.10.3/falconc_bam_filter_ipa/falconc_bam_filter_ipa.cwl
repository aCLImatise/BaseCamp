class: CommandLineTool
id: falconc_bam_filter_ipa.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__bamsfofn_string
  doc: =, --bams-fofn=             string  REQUIRED  set bams_fofn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__allsubreadnamesfn_string
  doc: =, --all-subread-names-fn=  string  ""        set all_subread_names_fn
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__minlen_int
  doc: =, --min-len=               int     -1        set min_len
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_min_frac
  doc: =                   float   0.7       set min_frac
  type: boolean?
  inputBinding:
    prefix: --min-frac
- id: in_bam_filter_ipa
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
- bam-filter-ipa
