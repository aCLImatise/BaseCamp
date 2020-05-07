class: CommandLineTool
id: make_library_id_lists.py.cwl
inputs:
- id: input_fast_a
  doc: The path to a FASTA file containing input sequences [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- make_library_id_lists.py
