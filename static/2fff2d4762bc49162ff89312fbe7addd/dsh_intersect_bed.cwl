class: CommandLineTool
id: dsh_intersect_bed.cwl
inputs:
- id: a_input_file
  doc: '[class java.io.File]  A input BED file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --a-input-file
- id: b_input_file
  doc: '[class java.io.File]  B input BED file [required]'
  type: boolean
  inputBinding:
    prefix: --b-input-file
- id: output_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-file
- id: strategy
  doc: '[class java.lang.String]  strategy { range-list, range-set, centered-range-tree,
    r-tree, r-star-tree }, default range-set [optional]'
  type: boolean
  inputBinding:
    prefix: --strategy
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-intersect-bed
