class: CommandLineTool
id: dsh_filter_sam.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_range
  doc: '[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based
    coordindates [optional]'
  type: boolean?
  inputBinding:
    prefix: --range
- id: in_mapq
  doc: '[class java.lang.Integer]  filter by mapq [optional]'
  type: boolean?
  inputBinding:
    prefix: --mapq
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean?
  inputBinding:
    prefix: --script
- id: in_input_sam_file
  doc: '[class java.io.File]  input SAM file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-sam-file
- id: in_output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-sam-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sam_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-sam
