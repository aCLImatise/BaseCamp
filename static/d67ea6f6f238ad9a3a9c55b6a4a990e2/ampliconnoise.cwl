class: CommandLineTool
id: ampliconnoise.py.cwl
inputs:
- id: mapping_fp
  doc: the mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: sff_file_path
  doc: sff.txt filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --sff_filepath
- id: output_file_path
  doc: the output file [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- ampliconnoise.py
