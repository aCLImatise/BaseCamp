class: CommandLineTool
id: get_motif_counts.awk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get-motif-counts.awk
