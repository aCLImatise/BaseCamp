class: CommandLineTool
id: dsh_vcf_samples.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-vcf-file
- id: in_output_sample_file
  doc: '[class java.io.File]  output sample file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-sample-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sample_file
  doc: '[class java.io.File]  output sample file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sample_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dsh-vcf-samples
