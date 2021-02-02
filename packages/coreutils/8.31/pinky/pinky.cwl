class: CommandLineTool
id: pinky.cwl
inputs:
- id: in_produce_format_output
  doc: produce long format output for the specified USERs
  type: boolean
  inputBinding:
    prefix: -l
- id: in_omit_users_directory
  doc: omit the user's home directory and shell in long format
  type: boolean
  inputBinding:
    prefix: -b
- id: in_omit_users_plan
  doc: omit the user's plan file in long format
  type: boolean
  inputBinding:
    prefix: -p
- id: in_short_format_output
  doc: do short format output, this is the default
  type: boolean
  inputBinding:
    prefix: -s
- id: in_omit_line_column
  doc: omit the line of column headings in short format
  type: boolean
  inputBinding:
    prefix: -f
- id: in_omit_users_full_name_short
  doc: omit the user's full name in short format
  type: boolean
  inputBinding:
    prefix: -w
- id: in_omit_users_full_name_host
  doc: omit the user's full name and remote host in short format
  type: boolean
  inputBinding:
    prefix: -i
- id: in_omit_users_host
  doc: "omit the user's full name, remote host and idle time\nin short format"
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pinky
