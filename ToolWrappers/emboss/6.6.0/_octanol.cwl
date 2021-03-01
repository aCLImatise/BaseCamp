class: CommandLineTool
id: _octanol.cwl
inputs:
- id: in_data_file
  doc: datafile   [Ewhite-wimley.dat] White-Wimley data file
  type: boolean?
  inputBinding:
    prefix: -datafile
- id: in_width
  doc: integer    [19] Window size (Integer from 1 to 200)
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_plot_octanol
  doc: boolean    [N] Display the octanol plot
  type: boolean?
  inputBinding:
    prefix: -plotoctanol
- id: in_plot_interface
  doc: boolean    [N] Display the interface plot
  type: boolean?
  inputBinding:
    prefix: -plotinterface
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _octanol
