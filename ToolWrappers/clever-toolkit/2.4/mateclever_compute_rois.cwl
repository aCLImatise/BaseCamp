class: CommandLineTool
id: mateclever_compute_rois.cwl
inputs:
- id: in_distance_deletion_breakpoints
  doc: "Distance from deletion breakpoints to be included (default:\n750)."
  type: long?
  inputBinding:
    prefix: -d
- id: in_maximum_deletion_length
  doc: 'Maximum deletion length to be considered (default: none).'
  type: long?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mateclever-compute-rois
