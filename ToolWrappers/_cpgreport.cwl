class: CommandLineTool
id: _cpgreport.cwl
inputs:
- id: in_score
  doc: "integer    [17] This sets the score for each CG\nsequence found. A value of\
    \ 17 is more\nsensitive, but 28 has also been used with\nsome success. (Integer\
    \ from 1 to 200)"
  type: boolean
  inputBinding:
    prefix: -score
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _cpgreport
