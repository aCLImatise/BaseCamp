class: CommandLineTool
id: pool_test_datasets.py.cwl
inputs:
- id: trait_table_dir
  doc: the input trait table directory (files in biom format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --trait_table_dir
- id: exp_trait_table_dir
  doc: the input expected trait table directory (files in biom format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --exp_trait_table_dir
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- pool_test_datasets.py
