class: CommandLineTool
id: .viral_ngs_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- .viral-ngs-post-link.sh
