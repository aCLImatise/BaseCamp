class: CommandLineTool
id: cactus_covered_intervals.cwl
inputs:
- id: in_query_offsets
  doc: "input query names contain offsets, as described below\n(by default input query\
    \ names do not contain offsets)"
  type: boolean?
  inputBinding:
    prefix: --queryoffsets
- id: in_mark_end
  doc: write a comment at the end of the output file
  type: File?
  inputBinding:
    prefix: --markend
- id: in_progress
  doc: report each chromosome as we encounter it
  type: string?
  inputBinding:
    prefix: --progress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mark_end
  doc: write a comment at the end of the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_mark_end)
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_covered_intervals
