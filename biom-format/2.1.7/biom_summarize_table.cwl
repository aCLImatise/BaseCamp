class: CommandLineTool
id: biom_summarize_table.cwl
inputs:
- id: input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: output_fp
  doc: An output file-path
  type: File
  inputBinding:
    prefix: --output-fp
- id: qualitative
  doc: Present counts as number of unique observation ids per sample, rather than
    counts of observations per sample.
  type: boolean
  inputBinding:
    prefix: --qualitative
- id: observations
  doc: Summarize over observations
  type: boolean
  inputBinding:
    prefix: --observations
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- summarize-table
