class: CommandLineTool
id: phyloFlash.pl.cwl
inputs:
- id: in_read_one
  doc: ''
  type: File?
  inputBinding:
    prefix: -read1
- id: in_lib
  doc: ''
  type: string?
  inputBinding:
    prefix: -lib
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyloflash:3.4--0
cwlVersion: v1.1
baseCommand:
- phyloFlash.pl
