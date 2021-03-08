class: CommandLineTool
id: vcf2tsv.cwl
inputs:
- id: in_g
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_vcf
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcf2tsv
