class: CommandLineTool
id: vcfannotate.cwl
inputs:
- id: in_bed
  doc: use annotations provided by this BED file
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_key
  doc: use this INFO field key for the annotations
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_default
  doc: use this INFO field key for records without annotations
  type: boolean?
  inputBinding:
    prefix: --default
- id: in_vcf_file
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
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfannotate
