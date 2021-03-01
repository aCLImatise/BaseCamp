class: CommandLineTool
id: nextflow.bak_console.cwl
inputs:
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextflow:20.10.0--hecda079_0
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- console
