class: CommandLineTool
id: dsh_variant_table_to_vcf.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_variant_table_file
  doc: '[class java.io.File]  input Ensembl variant table file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-variant-table-file
- id: in_output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-vcf-file
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-variant-table-to-vcf
