class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme2images.cwl
inputs:
- id: motif
  doc: output only a selected motif; repeatable
  type: string
  inputBinding:
    prefix: -motif
- id: eps
  doc: output logos in eps format
  type: boolean
  inputBinding:
    prefix: -eps
- id: png
  doc: output logos in png format
  type: boolean
  inputBinding:
    prefix: -png
- id: rc
  doc: output reverse complement logos
  type: boolean
  inputBinding:
    prefix: -rc
- id: motifs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- meme2images
