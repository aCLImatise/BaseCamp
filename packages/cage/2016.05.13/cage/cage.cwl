class: CommandLineTool
id: cage.cwl
inputs:
- id: in__outputvcf_vcfoutputfileor
  doc: ",  --output_vcf <VCF_output_file>\n(OR required)  File to output variants\
    \ called when running CAGe\n-- OR --"
  type: File
  inputBinding:
    prefix: -o
- id: in__inputsnpdb_snpinputdbor
  doc: ",  --input_SNP_db <SNP_input_db>\n(OR required)  Filename of sqlite3 SNP database"
  type: File
  inputBinding:
    prefix: -s
- id: in__verboseprint_verbose
  doc: ",  --verbose\nprint verbose output of CAGe"
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputvcf_vcfoutputfileor
  doc: ",  --output_vcf <VCF_output_file>\n(OR required)  File to output variants\
    \ called when running CAGe\n-- OR --"
  type: File
  outputBinding:
    glob: $(inputs.in__outputvcf_vcfoutputfileor)
cwlVersion: v1.1
baseCommand:
- cage
