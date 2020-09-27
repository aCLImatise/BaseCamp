class: CommandLineTool
id: _mwfilter.cwl
inputs:
- id: in_tolerance
  doc: float      [50.0] Ppm tolerance (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: in_show_del
  doc: boolean    [N] Output deleted mwts
  type: boolean
  inputBinding:
    prefix: -showdel
- id: in_data_file
  doc: "datafile   [Emwfilter.dat] Molecular weight standards\ndata file"
  type: boolean
  inputBinding:
    prefix: -datafile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _mwfilter
