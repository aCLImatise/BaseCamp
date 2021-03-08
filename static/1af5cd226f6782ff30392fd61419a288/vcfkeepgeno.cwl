class: CommandLineTool
id: vcfkeepgeno.cwl
inputs:
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_field_one
  doc: ''
  type: long?
  inputBinding:
    position: 1
- id: in_field_two
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfkeepgeno
