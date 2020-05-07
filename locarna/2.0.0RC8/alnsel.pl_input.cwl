class: CommandLineTool
id: alnsel.pl_input.aln.cwl
inputs:
- id: names
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alnsel.pl
- input.aln
