class: CommandLineTool
id: split_Bed_into_equal_regions.py.cwl
inputs:
- id: in_input_file
  doc: 'Input merged BED file (default: None)'
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_files
  doc: "Output BED file (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"
  type: File?
  inputBinding:
    prefix: --output-files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_files
  doc: "Output BED file (default: <_io.TextIOWrapper\nname='<stdout>' mode='w' encoding='utf-8'>)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_files)
hints: []
cwlVersion: v1.1
baseCommand:
- split_Bed_into_equal_regions.py
