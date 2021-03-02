class: CommandLineTool
id: CompareDropSeqAlignments.cwl
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
- id: in_times_dot
  doc: CONTIG_REPORT=File            Output file that maps the contig the read uniquely
    mapped to in INPUT_1, and the contig
  type: string
  inputBinding:
    position: 0
- id: in_null_dot
  doc: READ_REPORT=File              Output each read that disagrees on mapping by
    contig/position.  Emits the read name,
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
- CompareDropSeqAlignments
