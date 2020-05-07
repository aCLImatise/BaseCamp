class: CommandLineTool
id: trflp_file_to_otu_table.py.cwl
inputs:
- id: input_path
  doc: 'input path: TRFLP text file [REQUIRED]'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: 'output file: OTU table [REQUIRED]'
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- trflp_file_to_otu_table.py
