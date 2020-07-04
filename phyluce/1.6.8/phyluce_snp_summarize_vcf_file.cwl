class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/phyluce_snp_summarize_vcf_file.cwl
inputs:
- id: input
  doc: The vcf file to process
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_summarize_vcf_file
