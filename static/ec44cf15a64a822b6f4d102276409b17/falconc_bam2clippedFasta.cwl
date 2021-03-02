class: CommandLineTool
id: falconc_bam2clippedFasta.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__inbam_string
  doc: =, --in-bam=  string  REQUIRED  input bam name
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__region_string
  doc: =, --region=  string  REQUIRED  htslib formatted region seqid:start-end
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_flag_int_filter
  doc: =, --flag=    int     3844      filter reads with flag
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_flip_rc
  doc: "bool    false     reverse complement (RC) the sequence if\nalignment is in\
    \ RC\n"
  type: boolean?
  inputBinding:
    prefix: --flip-rc
- id: in_bam_two_clipped_fast_a
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
- bam2clippedFasta
