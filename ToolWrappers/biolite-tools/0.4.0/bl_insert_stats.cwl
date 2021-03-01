class: CommandLineTool
id: bl_insert_stats.cwl
inputs:
- id: in_specify_input_file
  doc: specify the SAM input file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_output_file
  doc: specify the STATS output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_maxinsert_bin_allocated
  doc: MAX_INSERT bin allocated for the histogram
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_insert_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: specify the STATS output file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bl-insert-stats
