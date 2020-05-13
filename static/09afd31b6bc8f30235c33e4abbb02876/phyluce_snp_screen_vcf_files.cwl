class: CommandLineTool
id: phyluce_snp_screen_vcf_files.cwl
inputs:
- id: input
  doc: The vcf file to process
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The vcf file to write
  type: string
  inputBinding:
    prefix: --output
- id: complete
  doc: The percentage of missing data to allow.
  type: string
  inputBinding:
    prefix: --complete
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_screen_vcf_files
