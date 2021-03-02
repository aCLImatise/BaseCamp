class: CommandLineTool
id: vcfgenotypecompare.cwl
inputs:
- id: in_other_genotype_tag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf_file
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
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfgenotypecompare
