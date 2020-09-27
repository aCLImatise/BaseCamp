class: CommandLineTool
id: meme2images.cwl
inputs:
- id: in_motif
  doc: output only a selected motif; repeatable
  type: string
  inputBinding:
    prefix: -motif
- id: in_eps
  doc: output logos in eps format
  type: boolean
  inputBinding:
    prefix: -eps
- id: in_png
  doc: output logos in png format
  type: boolean
  inputBinding:
    prefix: -png
- id: in_rc
  doc: output reverse complement logos
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_motifs_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meme2images
