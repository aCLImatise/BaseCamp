class: CommandLineTool
id: txtdiagnosis.py.cwl
inputs:
- id: in_file_location_text
  doc: File location for the text file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_filename_location_text
  doc: Filename location for the text file.
  type: File?
  inputBinding:
    prefix: -n
- id: in_name_output_file
  doc: Name of the output file.
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- txtdiagnosis.py
