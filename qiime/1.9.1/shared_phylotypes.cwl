class: CommandLineTool
id: shared_phylotypes.py.cwl
inputs:
- id: otu_table_fp
  doc: path to the input OTU table in biom format or a directory containing OTU tables
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: output_fp
  doc: the output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- shared_phylotypes.py
