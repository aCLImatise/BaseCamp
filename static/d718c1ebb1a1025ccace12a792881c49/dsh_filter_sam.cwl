class: CommandLineTool
id: dsh_filter_sam.cwl
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
- id: mapq
  doc: '[class java.lang.Integer]  filter by mapq [optional]'
  type: boolean
  inputBinding:
    prefix: --mapq
- id: script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean
  inputBinding:
    prefix: --script
- id: input_sam_file
  doc: '[class java.io.File]  input SAM file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-sam-file
- id: output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-sam-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-filter-sam
