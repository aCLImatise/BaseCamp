class: CommandLineTool
id: radsex_depth.cwl
inputs:
- id: in_markers_table
  doc: TEXT:FILE    Path to a marker depths table generated by "process"                              [REQUIRED]
  type: boolean?
  inputBinding:
    prefix: --markers-table
- id: in_pop_map
  doc: TEXT:FILE    Path to a tabulated map specifying groups for all individuals
    (population map)    [REQUIRED]
  type: boolean?
  inputBinding:
    prefix: --popmap
- id: in_output_file
  doc: TEXT         Path to the output file (table of depth for each individual)                      [REQUIRED]
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT         Path to the output file (table of depth for each individual)                      [REQUIRED]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- radsex
- depth
