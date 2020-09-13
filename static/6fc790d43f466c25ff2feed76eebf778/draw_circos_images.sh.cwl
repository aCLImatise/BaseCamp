class: CommandLineTool
id: ../../../draw_circos_images.sh.cwl
inputs:
- id: in_directory_containing_files
  doc: directory containing files to represent
  type: Directory
  inputBinding:
    prefix: -i
- id: in_containing_config_files
  doc: containing config files
  type: Directory
  inputBinding:
    prefix: -d
- id: in_file_selected_draw
  doc: file selected to draw
  type: File
  inputBinding:
    prefix: -C
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_file
  doc: file
  type: File
  inputBinding:
    prefix: -l
- id: in_directory_create_config
  doc: directory to create config and pictures
  type: Directory
  inputBinding:
    prefix: -o
- id: in_remove_config_files
  doc: ': remove config files'
  type: string
  inputBinding:
    prefix: -c
- id: in_var_8
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    prefix: -V
- id: in_usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- draw_circos_images.sh
