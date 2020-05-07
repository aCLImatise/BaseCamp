class: CommandLineTool
id: split_Bed_into_equal_regions.py.cwl
inputs:
- id: input_file
  doc: 'Input merged BED file (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: num_of_files
  doc: '1 (default: 1)'
  type: string
  inputBinding:
    prefix: --num-of-files
- id: output_files
  doc: "Output BED file (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output-files
outputs: []
cwlVersion: v1.1
baseCommand:
- split_Bed_into_equal_regions.py
