class: CommandLineTool
id: phyluce_snp_screen_vcf_files.cwl
inputs:
- id: in_input
  doc: The vcf file to process
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: The vcf file to write
  type: File
  inputBinding:
    prefix: --output
- id: in_complete
  doc: The percentage of missing data to allow.
  type: string
  inputBinding:
    prefix: --complete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_snp_screen_vcf_files
