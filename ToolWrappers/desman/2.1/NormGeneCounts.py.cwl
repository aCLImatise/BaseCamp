class: CommandLineTool
id: NormGeneCounts.py.cwl
inputs:
- id: in_frac_thresh
  doc: "threshold for assigning gene to strain as fraction of\nreads deriving from\
    \ it, defaults to 0.01"
  type: double?
  inputBinding:
    prefix: --frac_thresh
- id: in_output_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- NormGeneCounts.py
