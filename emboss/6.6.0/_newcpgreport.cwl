class: CommandLineTool
id: _newcpgreport.cwl
inputs:
- id: window
  doc: integer    [100] Window size (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: shift
  doc: integer    [1] Shift increment (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -shift
- id: min_len
  doc: integer    [200] Minimum Length (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -minlen
- id: min_oe
  doc: float      [0.6] Minimum observed/expected (Number from 0.000 to 10.000)
  type: boolean
  inputBinding:
    prefix: -minoe
- id: min_pc
  doc: float      [50.] Minimum percentage (Number from 0.000 to 100.000)
  type: boolean
  inputBinding:
    prefix: -minpc
outputs: []
cwlVersion: v1.1
baseCommand:
- _newcpgreport
