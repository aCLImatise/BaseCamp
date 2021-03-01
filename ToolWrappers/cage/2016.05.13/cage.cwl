class: CommandLineTool
id: cage.cwl
inputs:
- id: in_output_vcf
  doc: "(OR required)  File to output variants called when running CAGe\n-- OR --"
  type: File?
  inputBinding:
    prefix: --output_vcf
- id: in_input_snp_db
  doc: (OR required)  Filename of sqlite3 SNP database
  type: File?
  inputBinding:
    prefix: --input_SNP_db
- id: in_verbose
  doc: print verbose output of CAGe
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: "(OR required)  File to output variants called when running CAGe\n-- OR --"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- cage
