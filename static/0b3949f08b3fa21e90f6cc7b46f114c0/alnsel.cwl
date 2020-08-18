class: CommandLineTool
id: ../../../alnsel.pl.cwl
inputs:
- id: input_dot_aln
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: names
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- alnsel.pl
