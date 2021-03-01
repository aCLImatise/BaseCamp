class: CommandLineTool
id: _btwisted.cwl
inputs:
- id: in_angle_data
  doc: datafile   [Eangles.dat] DNA base pair twist angle data
  type: boolean?
  inputBinding:
    prefix: -angledata
- id: in_file
  doc: -energydata         datafile   [Eenergy.dat] DNA base pair stacking
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _btwisted
