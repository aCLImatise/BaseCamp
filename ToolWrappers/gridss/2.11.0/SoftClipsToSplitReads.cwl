class: CommandLineTool
id: SoftClipsToSplitReads.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_true_dot
  doc: "Default value: true. This option can be set to 'null' to clear the default\
    \ value."
  type: string
  inputBinding:
    position: 0
- id: in_aligners
  doc: "Default value: EXTERNAL. This option can be set to 'null' to clear the default"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gridss:2.11.0--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- SoftClipsToSplitReads
