class: CommandLineTool
id: biom_summarize_table.cwl
inputs:
- id: in_input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: in_output_fp
  doc: An output file-path
  type: File
  inputBinding:
    prefix: --output-fp
- id: in_qualitative
  doc: "Present counts as number of unique observation ids per\nsample, rather than\
    \ counts of observations per sample."
  type: boolean
  inputBinding:
    prefix: --qualitative
- id: in_observations
  doc: Summarize over observations
  type: boolean
  inputBinding:
    prefix: --observations
- id: in_observations_dot
  doc: 'Example usage:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: An output file-path
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- biom
- summarize-table
