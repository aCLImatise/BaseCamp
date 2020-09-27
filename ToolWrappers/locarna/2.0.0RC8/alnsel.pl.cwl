class: CommandLineTool
id: alnsel.pl.cwl
inputs:
- id: in_input_dot_aln
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alnsel.pl
