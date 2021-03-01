class: CommandLineTool
id: _newcpgreport.cwl
inputs:
- id: in_window
  doc: integer    [100] Window size (Integer 1 or more)
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_shift
  doc: integer    [1] Shift increment (Integer 1 or more)
  type: boolean?
  inputBinding:
    prefix: -shift
- id: in_min_len
  doc: integer    [200] Minimum Length (Integer 1 or more)
  type: boolean?
  inputBinding:
    prefix: -minlen
- id: in_min_oe
  doc: "float      [0.6] Minimum observed/expected (Number from\n0.000 to 10.000)"
  type: boolean?
  inputBinding:
    prefix: -minoe
- id: in_min_pc
  doc: "float      [50.] Minimum percentage (Number from 0.000\nto 100.000)"
  type: boolean?
  inputBinding:
    prefix: -minpc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _newcpgreport
