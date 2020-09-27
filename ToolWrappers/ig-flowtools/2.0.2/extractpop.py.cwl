class: CommandLineTool
id: extractpop.py.cwl
inputs:
- id: in_file_location_text
  doc: File location for the text file.
  type: File
  inputBinding:
    prefix: -i
- id: in_list_populations_extract
  doc: List of populations to extract.
  type: string
  inputBinding:
    prefix: -p
- id: in_name_output_file
  doc: Name of the output file.
  type: File
  inputBinding:
    prefix: -o
- id: in_what_to_populations
  doc: What to do with the populations.
  type: string
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- extractpop.py
