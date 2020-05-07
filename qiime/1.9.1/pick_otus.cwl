class: CommandLineTool
id: pick_otus.py.cwl
inputs:
- id: input_seqs_file_path
  doc: Path to input sequences file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_seqs_filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- pick_otus.py
