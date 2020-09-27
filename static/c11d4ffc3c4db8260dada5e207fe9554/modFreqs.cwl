class: CommandLineTool
id: modFreqs.cwl
inputs:
- id: in_or
  doc: modFreqs tree.mod <G+Cfreq> > new.mod
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- modFreqs
