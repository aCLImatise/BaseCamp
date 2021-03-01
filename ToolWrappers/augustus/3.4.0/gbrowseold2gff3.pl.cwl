class: CommandLineTool
id: gbrowseold2gff3.pl.cwl
inputs:
- id: in_hints
  doc: convert gff format for intron hints to gff3
  type: string
  inputBinding:
    position: 0
- id: in_source
  doc: fill this into the second column
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
- gbrowseold2gff3.pl
