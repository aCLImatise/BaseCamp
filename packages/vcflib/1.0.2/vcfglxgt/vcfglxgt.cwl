class: CommandLineTool
id: vcfglxgt.cwl
inputs:
- id: in_fix_null_genotypes
  doc: only apply to null and partly-null genotypes
  type: boolean?
  inputBinding:
    prefix: --fix-null-genotypes
- id: in_vcf_file
  doc: ''
  type: File
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
- vcfglxgt
