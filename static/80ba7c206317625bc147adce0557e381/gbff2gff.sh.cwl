class: CommandLineTool
id: gbff2gff.sh.cwl
inputs:
- id: in_gb_ff_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_gff_file
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
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- gbff2gff.sh
