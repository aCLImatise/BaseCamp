class: CommandLineTool
id: meme2alph.cwl
inputs:
- id: in_motifs_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- meme2alph
