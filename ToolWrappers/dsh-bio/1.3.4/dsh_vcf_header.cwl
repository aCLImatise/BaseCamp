class: CommandLineTool
id: dsh_vcf_header.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-vcf-file
- id: in_output_vcf_header_file
  doc: '[class java.io.File]  output VCF header file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-vcf-header-file
- id: in_validate
  doc: validate VCF header lines [optional]
  type: boolean
  inputBinding:
    prefix: --validate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_header_file
  doc: '[class java.io.File]  output VCF header file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_vcf_header_file)
cwlVersion: v1.1
baseCommand:
- dsh-vcf-header
