class: CommandLineTool
id: ../../../meme2alph.cwl
inputs:
- id: motifs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alphabet_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- meme2alph
