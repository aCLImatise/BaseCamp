class: CommandLineTool
id: dsh_filter_bed.cwl
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
- id: in_score
  doc: '[class java.lang.Integer]  filter by score [optional]'
  type: boolean?
  inputBinding:
    prefix: --score
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean?
  inputBinding:
    prefix: --script
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
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.3--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-bed
