class: CommandLineTool
id: tophat_fusion_post.cwl
inputs:
- id: bowtie_index
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tophat-fusion-post
