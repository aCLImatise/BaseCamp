class: CommandLineTool
id: dsh_vcf_pedigree.cwl
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
- id: output_pedigree_file
  doc: '[class java.io.File]  output pedigree file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-pedigree-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-vcf-pedigree
