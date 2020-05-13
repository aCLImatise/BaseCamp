class: CommandLineTool
id: sort_otu_table.py.cwl
inputs:
- id: input_otu_table
  doc: Input OTU table filepath in BIOM format. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_table
- id: output_fp
  doc: Output OTU table filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- sort_otu_table.py
