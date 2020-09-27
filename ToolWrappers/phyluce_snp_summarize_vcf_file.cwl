class: CommandLineTool
id: phyluce_snp_summarize_vcf_file.cwl
inputs:
- id: in_input
  doc: The vcf file to process
  type: File
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_snp_summarize_vcf_file
