class: CommandLineTool
id: falconc_ipa2_construct_config.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__outfn_string
  doc: =, --out-fn=  string  REQUIRED  Output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_out_fmt
  doc: "=      string  \"json\"    Output format of the config file. (json or\nbash)"
  type: File?
  inputBinding:
    prefix: --out-fmt
- id: in__infn_string
  doc: =, --in-fn=   string  "-"       set in_fn
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_no_sort
  doc: bool    false     set no_sort
  type: boolean?
  inputBinding:
    prefix: --no-sort
- id: in_ip_a_two_construct_config
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfn_string
  doc: =, --out-fn=  string  REQUIRED  Output file.
  type: File?
  outputBinding:
    glob: $(inputs.in__outfn_string)
- id: out_out_fmt
  doc: "=      string  \"json\"    Output format of the config file. (json or\nbash)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fmt)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- ipa2-construct-config
