class: CommandLineTool
id: delta2vcf.cwl
inputs:
- id: in_file_dot_delta
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0
cwlVersion: v1.1
baseCommand:
- delta2vcf
