class: CommandLineTool
id: dottup.cwl
inputs:
- id: in_word_size
  doc: integer    [10] Word size (Integer 2 or more)
  type: boolean
  inputBinding:
    prefix: -wordsize
- id: in_stretch
  doc: toggle     [N] Use non-proportional axes
  type: boolean
  inputBinding:
    prefix: -stretch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dottup
