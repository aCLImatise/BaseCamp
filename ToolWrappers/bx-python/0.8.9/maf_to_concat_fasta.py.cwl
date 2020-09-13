class: CommandLineTool
id: ../../../maf_to_concat_fasta.py.cwl
inputs:
- id: in_nowrap
  doc: ''
  type: string
  inputBinding:
    prefix: --nowrap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_to_concat_fasta.py
