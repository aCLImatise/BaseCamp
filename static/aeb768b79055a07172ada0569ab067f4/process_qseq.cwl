class: CommandLineTool
id: process_qseq.py.cwl
inputs:
- id: input_dir
  doc: the input directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: read
  doc: the read number to consider [REQUIRED]
  type: string
  inputBinding:
    prefix: --read
outputs: []
cwlVersion: v1.1
baseCommand:
- process_qseq.py
