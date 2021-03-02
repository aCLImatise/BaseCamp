class: CommandLineTool
id: dsh_intersect_bed.cwl
inputs:
- id: in_a_input_file
  doc: '[class java.io.File]  A input BED file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --a-input-file
- id: in_b_input_file
  doc: '[class java.io.File]  B input BED file [required]'
  type: boolean?
  inputBinding:
    prefix: --b-input-file
- id: in_output_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_strategy
  doc: '[class java.lang.String]  strategy { range-list, range-set, centered-range-tree,
    r-tree, r-star-tree }, default range-set [optional]'
  type: boolean?
  inputBinding:
    prefix: --strategy
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-intersect-bed
