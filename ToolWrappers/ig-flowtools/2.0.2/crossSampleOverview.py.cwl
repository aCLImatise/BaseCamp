class: CommandLineTool
id: crossSampleOverview.py.cwl
inputs:
- id: in_file_location_summary
  doc: File location for the summary statistics from
  type: File?
  inputBinding:
    prefix: -i
- id: in_file_location_html
  doc: File location for the HTML output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_file_location_mfi
  doc: File location for the MFI from FLOCK.
  type: File?
  inputBinding:
    prefix: -m
- id: in_directory_location_html
  doc: Directory location for the html supporting files.
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_location_sharetemplates_directory
  doc: Location of the /share/templates Directory.
  type: Directory?
  inputBinding:
    prefix: -t
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    prefix: -I
- id: in_cs_overview
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_location_html
  doc: File location for the HTML output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_file_location_html)
- id: out_directory_location_html
  doc: Directory location for the html supporting files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_location_html)
hints: []
cwlVersion: v1.1
baseCommand:
- crossSampleOverview.py
