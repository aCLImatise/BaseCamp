class: CommandLineTool
id: filterGenes.pl.cwl
inputs:
- id: in_name_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dbfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- filterGenes.pl
