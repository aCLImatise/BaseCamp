class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_compress_vcf.cwl
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
- id: output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-vcf-file
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-vcf
