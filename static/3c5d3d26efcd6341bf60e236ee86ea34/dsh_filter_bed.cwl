class: CommandLineTool
id: dsh_filter_bed.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: range
  doc: '[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based
    coordindates [optional]'
  type: boolean
  inputBinding:
    prefix: --range
- id: score
  doc: '[class java.lang.Integer]  filter by score [optional]'
  type: boolean
  inputBinding:
    prefix: --score
- id: script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean
  inputBinding:
    prefix: --script
- id: input_bed_file
  doc: '[class java.io.File]  input BED file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-bed-file
- id: output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-bed-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-filter-bed
