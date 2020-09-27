class: CommandLineTool
id: getOntology.py.cwl
inputs:
- id: in_m
  doc: marker queries.
  type: string
  inputBinding:
    prefix: -m
- id: in_y
  doc: marker queries.
  type: string
  inputBinding:
    prefix: -y
- id: in_name_output_html
  doc: Name of the output html file.
  type: File
  inputBinding:
    prefix: -o
- id: in_path_supporting_directory
  doc: Path to the html supporting directory
  type: File
  inputBinding:
    prefix: -d
- id: in_path_sharetemplates_directory
  doc: Path to the /share/templates directory
  type: File
  inputBinding:
    prefix: -t
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
- getOntology.py
