class: CommandLineTool
id: ComputeSamTags.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_substituted_dot
  doc: "Default value: true. This option can be set to 'null' to clear the default"
  type: string
  inputBinding:
    position: 0
- id: in_list_dot
  doc: WORKER_THREADS=Integer
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
- ComputeSamTags
