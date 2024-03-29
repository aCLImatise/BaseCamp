class: CommandLineTool
id: genomedata_close_data.cwl
inputs:
- id: in_verbose
  doc: Print status updates and diagnostic messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0
cwlVersion: v1.1
baseCommand:
- genomedata-close-data
