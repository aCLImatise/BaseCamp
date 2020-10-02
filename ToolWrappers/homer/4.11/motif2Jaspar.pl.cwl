class: CommandLineTool
id: motif2Jaspar.pl.cwl
inputs:
- id: in_motif_file
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
- motif2Jaspar.pl
