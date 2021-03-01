class: CommandLineTool
id: uvaialign.cwl
inputs:
- id: in_reference
  doc: reference sequence
  type: string?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/uvaia:1.0.0--hbcae180_0
cwlVersion: v1.1
baseCommand:
- uvaialign
