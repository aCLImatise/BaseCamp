class: CommandLineTool
id: gxwf_lint.cwl
inputs:
- id: in_training_topic
  doc: "If this is a training workflow, specify a training\ntopic.\n"
  type: string?
  inputBinding:
    prefix: --training-topic
- id: in_path
  doc: workflow path
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- gxwf-lint
