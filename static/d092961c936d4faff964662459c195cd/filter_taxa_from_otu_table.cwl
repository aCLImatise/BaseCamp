class: CommandLineTool
id: filter_taxa_from_otu_table.py.cwl
inputs:
- id: input_otu_table_fp
  doc: the input otu table filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_table_fp
- id: output_otu_table_fp
  doc: the output otu table filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_otu_table_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_taxa_from_otu_table.py
