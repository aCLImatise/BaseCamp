class: CommandLineTool
id: genomedata_info.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0
cwlVersion: v1.1
baseCommand:
- genomedata-info
