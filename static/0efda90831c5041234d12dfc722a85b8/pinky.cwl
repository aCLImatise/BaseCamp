class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pinky.cwl
inputs:
- id: long_format_output
  doc: long format output for the specified USERs
  type: string
  inputBinding:
    prefix: -l
- id: users_home_directory
  doc: the user's home directory and shell in long format
  type: string
  inputBinding:
    prefix: -b
- id: users_project_file
  doc: the user's project file in long format
  type: string
  inputBinding:
    prefix: -h
- id: users_plan_file
  doc: the user's plan file in long format
  type: string
  inputBinding:
    prefix: -p
- id: short_format_output
  doc: short format output, this is the default
  type: string
  inputBinding:
    prefix: -s
- id: line_column_headings
  doc: the line of column headings in short format
  type: string
  inputBinding:
    prefix: -f
- id: users_full_name_short
  doc: the user's full name in short format
  type: string
  inputBinding:
    prefix: -w
- id: users_full_name_host
  doc: the user's full name and remote host in short format
  type: string
  inputBinding:
    prefix: -i
- id: users_full_name_remote
  doc: the user's full name, remote host and idle time in short format
  type: string
  inputBinding:
    prefix: -q
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pinky
