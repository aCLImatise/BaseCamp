class: CommandLineTool
id: summarize_taxa_through_plots.py.cwl
inputs:
- id: otu_table_fp
  doc: the input otu table [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_taxa_through_plots.py
