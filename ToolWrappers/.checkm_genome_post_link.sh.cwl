class: CommandLineTool
id: .checkm_genome_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- .checkm-genome-post-link.sh
