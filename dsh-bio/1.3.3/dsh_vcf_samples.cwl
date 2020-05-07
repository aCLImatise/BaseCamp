class: CommandLineTool
id: dsh_vcf_samples.cwl
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
- id: output_sample_file
  doc: '[class java.io.File]  output sample file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-sample-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-vcf-samples
