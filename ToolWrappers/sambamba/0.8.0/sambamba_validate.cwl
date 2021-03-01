class: CommandLineTool
id: sambamba_validate.cwl
inputs:
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- validate
