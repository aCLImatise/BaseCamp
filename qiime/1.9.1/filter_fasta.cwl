class: CommandLineTool
id: filter_fasta.py.cwl
inputs:
- id: mapping_fp
  doc: '). [default: none]'
  type: boolean
  inputBinding:
    prefix: --mapping_fp
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: output_fast_a_fp
  doc: the output fasta filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_fasta.py
