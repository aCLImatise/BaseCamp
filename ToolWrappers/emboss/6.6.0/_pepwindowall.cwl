class: CommandLineTool
id: _pepwindowall.cwl
inputs:
- id: in_data_file
  doc: datafile   [Enakai.dat] AAINDEX entry data file
  type: boolean?
  inputBinding:
    prefix: -datafile
- id: in_window
  doc: integer    [19] Window size (Integer 1 or more)
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_normalize
  doc: boolean    [N] Normalize data values
  type: boolean?
  inputBinding:
    prefix: -normalize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _pepwindowall
