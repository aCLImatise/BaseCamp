class: CommandLineTool
id: dsh_vcf_header.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-vcf-file
- id: output_vcf_header_file
  doc: '[class java.io.File]  output VCF header file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-vcf-header-file
- id: validate
  doc: validate VCF header lines [optional]
  type: boolean
  inputBinding:
    prefix: --validate
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-vcf-header
