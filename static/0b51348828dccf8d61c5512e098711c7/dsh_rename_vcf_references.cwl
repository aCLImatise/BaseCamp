class: CommandLineTool
id: dsh_rename_vcf_references.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_chr
  doc: add "chr" to chromosome reference names [optional]
  type: boolean?
  inputBinding:
    prefix: --chr
- id: in_input_vcf_file
  doc: '[class java.io.File]  input VCF file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-vcf-file
- id: in_output_vcf_file
  doc: '[class java.io.File]  output VCF file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-vcf-file
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
- dsh-rename-vcf-references
