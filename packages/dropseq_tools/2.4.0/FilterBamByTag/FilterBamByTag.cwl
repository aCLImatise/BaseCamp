class: CommandLineTool
id: FilterBamByTag.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_tagstring_bam_tag
  doc: 'TAG=String                    The BAM tag to filter on.  Required. '
  type: string
  inputBinding:
    position: 0
- id: in_match_dot
  doc: 'For example, if the allowed value is A and the tag is A,B, the read would
    match. '
  type: string
  inputBinding:
    position: 0
- id: in_passingreadthresholddouble_set_value
  doc: PASSING_READ_THRESHOLD=Double If set to a a value < 1, the program will fail
    if fewer than this fraction of reads pass
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropseq_tools:2.4.0--0
cwlVersion: v1.1
baseCommand:
- FilterBamByTag
