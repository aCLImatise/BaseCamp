class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme_chip_html_to_tsv.cwl
inputs:
- id: meme_chip_html_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: summary_tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- meme-chip_html_to_tsv
