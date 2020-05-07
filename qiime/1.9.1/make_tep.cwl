class: CommandLineTool
id: make_tep.py.cwl
inputs:
- id: otu_table_fp
  doc: path to the input OTU table (i.e., the output from make_otu_table.py) [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: mapping_fp
  doc: the mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: tree_fp
  doc: path to tree [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_tep.py
