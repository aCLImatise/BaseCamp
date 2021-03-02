class: CommandLineTool
id: hotspot3d_summary.cwl
inputs:
- id: in_clusters_file
  doc: "Clusters file\nOPTIONAL"
  type: boolean?
  inputBinding:
    prefix: --clusters-file
- id: in_output_prefix
  doc: Output prefix
  type: boolean?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hotspot3d
- summary
