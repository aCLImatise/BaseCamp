class: CommandLineTool
id: filter_basil.py.cwl
inputs:
- id: in_input_file_name
  doc: Input file name.
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: -o
- id: in_min_oea_each_side
  doc: Minimal OEA coverage on each side.
  type: long?
  inputBinding:
    prefix: --min-oea-each-side
- id: in_min_oea_one_side
  doc: Minimal OEA coverage on one side.
  type: long?
  inputBinding:
    prefix: --min-oea-one-side
- id: in_min_oea_sum
  doc: Minimal total OEA coverage.
  type: long?
  inputBinding:
    prefix: --min-oea-sum
- id: in_min_clipping_each_side
  doc: Minimal OEA coverage on each side.
  type: long?
  inputBinding:
    prefix: --min-clipping-each-side
- id: in_min_clipping_sum
  doc: Minimal total OEA coverage.
  type: long?
  inputBinding:
    prefix: --min-clipping-sum
- id: in_min_g_score
  doc: "Smallest geometric mean score\n"
  type: long?
  inputBinding:
    prefix: --min-gscore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- filter_basil.py
