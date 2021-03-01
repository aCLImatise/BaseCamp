class: CommandLineTool
id: dsh_rename_bed_references.cwl
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
- id: in_input_bed_file
  doc: '[class java.io.File]  input BED file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-bed-file
- id: in_output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-bed-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-rename-bed-references
