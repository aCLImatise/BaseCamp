class: CommandLineTool
id: _msbar.cwl
inputs:
- id: count
  doc: integer    [1] Number of times to perform the mutation operations (Integer
    0 or more)
  type: boolean
  inputBinding:
    prefix: -count
- id: point
  doc: 'menu       [0] Types of point mutations to perform (Values: 0 (None); 1 (Any
    of the following); 2 (Insertions); 3 (Deletions); 4 (Changes); 5 (Duplications);
    6 (Moves))'
  type: boolean
  inputBinding:
    prefix: -point
- id: block
  doc: 'menu       [0] Types of block mutations to perform (Values: 0 (None); 1 (Any
    of the following); 2 (Insertions); 3 (Deletions); 4 (Changes); 5 (Duplications);
    6 (Moves))'
  type: boolean
  inputBinding:
    prefix: -block
outputs: []
cwlVersion: v1.1
baseCommand:
- _msbar
