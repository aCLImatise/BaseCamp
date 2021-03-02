class: CommandLineTool
id: collapse_pops.py.cwl
inputs:
- id: in_file_location_text
  doc: File location for the text file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_list_populations_collapse
  doc: List of populations to collapse.
  type: string?
  inputBinding:
    prefix: -p
- id: in_name_output_file
  doc: Name of the output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_what_collapse_populations
  doc: What to collapse the populations in.
  type: string?
  inputBinding:
    prefix: -c
- id: in_extract_pop
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- collapse_pops.py
