class: CommandLineTool
id: dsh_variant_table_to_vcf.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_variant_table_file
  doc: '[class java.io.File]  input Ensembl variant table file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-variant-table-file
- id: output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-vcf-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-variant-table-to-vcf
