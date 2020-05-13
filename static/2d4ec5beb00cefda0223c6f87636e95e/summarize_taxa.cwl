class: CommandLineTool
id: summarize_taxa.py.cwl
inputs:
- id: otu_table_fp
  doc: Input OTU table filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_taxa.py
