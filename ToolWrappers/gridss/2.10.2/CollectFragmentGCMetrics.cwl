class: CommandLineTool
id: CollectFragmentGCMetrics.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_value_dot
  doc: READ_PAIR_CONCORDANCE_MIN_FRAGMENT_SIZE=Integer
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gridss:2.10.2--0
cwlVersion: v1.1
baseCommand:
- CollectFragmentGCMetrics
