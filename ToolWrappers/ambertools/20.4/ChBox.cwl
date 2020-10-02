class: CommandLineTool
id: ChBox.cwl
inputs:
- id: in_original_coordinate_file
  doc: ': the original coordinate file (.RST format, coordinates only)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_output_coordinate_file
  doc: ': the output coordinate file (.RST format)'
  type: File
  inputBinding:
    prefix: -o
- id: in_al
  doc: ': box alpha angle'
  type: boolean
  inputBinding:
    prefix: -al
- id: in_bt
  doc: ': box beta angle'
  type: boolean
  inputBinding:
    prefix: -bt
- id: in_gm
  doc: ': box gamma angle'
  type: boolean
  inputBinding:
    prefix: -gm
- id: in_x_dimension_box
  doc: ': X dimension of the box'
  type: boolean
  inputBinding:
    prefix: -X
- id: in_y_dimension_box
  doc: ': Y dimension of the box'
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_z_dimension_box
  doc: ': Z dimension of the box'
  type: boolean
  inputBinding:
    prefix: -Z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_coordinate_file
  doc: ': the output coordinate file (.RST format)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_coordinate_file)
cwlVersion: v1.1
baseCommand:
- ChBox
