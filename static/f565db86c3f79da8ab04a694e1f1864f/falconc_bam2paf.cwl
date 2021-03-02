class: CommandLineTool
id: falconc_bam2paf.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__inbamfn_string
  doc: =, --in-bam-fn=     string  REQUIRED  input bam filename
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_outppaffn_string_required
  doc: =, --out-p-paf-fn=  string  REQUIRED  output paf filename for p-contigs
  type: File?
  inputBinding:
    prefix: -o
- id: in_out_a_paf_fn
  doc: "=       string  REQUIRED  output paf filename for a-contigs\n(those with -\
    \ in their name)\n"
  type: File?
  inputBinding:
    prefix: --out-a-paf-fn
- id: in_bam_two_paf
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outppaffn_string_required
  doc: =, --out-p-paf-fn=  string  REQUIRED  output paf filename for p-contigs
  type: File?
  outputBinding:
    glob: $(inputs.in_outppaffn_string_required)
- id: out_out_a_paf_fn
  doc: "=       string  REQUIRED  output paf filename for a-contigs\n(those with -\
    \ in their name)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_a_paf_fn)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- bam2paf
