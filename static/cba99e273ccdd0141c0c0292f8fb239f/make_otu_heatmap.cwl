class: CommandLineTool
id: make_otu_heatmap.py.cwl
inputs:
- id: otu_table_fp
  doc: path to the input OTU table (i.e., the output from make_otu_table.py) [REQUIRED]
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
- make_otu_heatmap.py
