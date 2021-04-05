class: CommandLineTool
id: draw_circos_images.sh.cwl
inputs:
- id: in_directory_containing_files
  doc: directory containing files to represent
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_containing_config_files
  doc: containing config files
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_file_selected_draw
  doc: file selected to draw
  type: File?
  inputBinding:
    prefix: -C
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -s
- id: in_directory_create_config
  doc: directory to create config and pictures
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_remove_config_files
  doc: ': remove config files'
  type: string?
  inputBinding:
    prefix: -c
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- draw_circos_images.sh
