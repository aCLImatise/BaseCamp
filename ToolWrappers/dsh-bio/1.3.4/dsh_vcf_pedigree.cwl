class: CommandLineTool
id: dsh_vcf_pedigree.cwl
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
- id: in_output_pedigree_file
  doc: '[class java.io.File]  output pedigree file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-pedigree-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pedigree_file
  doc: '[class java.io.File]  output pedigree file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_pedigree_file)
cwlVersion: v1.1
baseCommand:
- dsh-vcf-pedigree
