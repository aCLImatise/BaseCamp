class: CommandLineTool
id: pick_de_novo_otus.py.cwl
inputs:
- id: input_fp
  doc: the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- pick_de_novo_otus.py
