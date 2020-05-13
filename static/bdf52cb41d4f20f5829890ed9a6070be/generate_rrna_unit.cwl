class: CommandLineTool
id: generate_rrna_unit.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the ribosomal DNA complete repeating unit
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the ribosomal DNA complete repeating unit is generated.
    Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_rrna_unit.py
