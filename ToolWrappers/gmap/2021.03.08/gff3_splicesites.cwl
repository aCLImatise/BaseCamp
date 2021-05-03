class: CommandLineTool
id: gff3_splicesites.cwl
inputs:
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0
cwlVersion: v1.1
baseCommand:
- gff3_splicesites
