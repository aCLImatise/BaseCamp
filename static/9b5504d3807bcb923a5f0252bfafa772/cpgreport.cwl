class: CommandLineTool
id: cpgreport.cwl
inputs:
- id: score
  doc: integer    [17] This sets the score for each CG sequence found. A value of
    17 is more sensitive, but 28 has also been used with some success. (Integer from
    1 to 200)
  type: boolean
  inputBinding:
    prefix: -score
outputs: []
cwlVersion: v1.1
baseCommand:
- cpgreport
