class: CommandLineTool
id: compare_biom.py.cwl
inputs:
- id: exp_trait_table_fp
  doc: the expected trait table (biom format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --exp_trait_table_fp
- id: output_fp
  doc: the output file [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_biom.py
