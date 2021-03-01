class: CommandLineTool
id: GatherReadQualityMetrics.cwl
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
- id: in_value_dot
  doc: TAG=String                    Optionally aggregate reads by a tag and output
    per-tag metrics.  The map quality scores
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
- GatherReadQualityMetrics
