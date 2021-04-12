class: CommandLineTool
id: AnnotateInexactHomologyBedpe.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_required_dot
  doc: DISTANCE=Integer
  type: string
  inputBinding:
    position: 0
- id: in_value_dot
  doc: UNTEMPLATED_SEQUENCE_COLUMN=Integer
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gridss:2.11.1--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- AnnotateInexactHomologyBedpe
