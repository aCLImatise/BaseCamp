class: CommandLineTool
id: profileCLs.py.cwl
inputs:
- id: in_file_location_profiletxt
  doc: File location for the profile.txt from FLOCK.
  type: File
  inputBinding:
    prefix: -i
- id: in_name_output_html
  doc: Name of the output html file.
  type: File
  inputBinding:
    prefix: -o
- id: in_path_html_supporting
  doc: Path to html supporting directory.
  type: File
  inputBinding:
    prefix: -d
- id: in_path_sharetemplates_directory
  doc: Path to the /share/templates directory
  type: File
  inputBinding:
    prefix: -t
- id: in_tool_dir
  doc: runs flowCL on a each population defined by FLOCK.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_html
  doc: Name of the output html file.
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_html)
cwlVersion: v1.1
baseCommand:
- profileCLs.py
