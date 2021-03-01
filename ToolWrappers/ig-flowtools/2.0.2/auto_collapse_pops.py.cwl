class: CommandLineTool
id: auto_collapse_pops.py.cwl
inputs:
- id: in_flock_output_file
  doc: FLOCK output file
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of the output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_report_file
  doc: Name of the report file.
  type: File?
  inputBinding:
    prefix: -r
- id: in_file_location_profiletxt
  doc: File location for the profile.txt from FLOCK.
  type: File?
  inputBinding:
    prefix: -p
- id: in_auto_pop_collapse_from_profile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_flock_output_file
  doc: FLOCK output file
  type: File?
  outputBinding:
    glob: $(inputs.in_flock_output_file)
- id: out_name_output_file
  doc: Name of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- auto_collapse_pops.py
