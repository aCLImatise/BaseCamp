class: CommandLineTool
id: plot_taxa_summary.py.cwl
inputs:
- id: counts_fname
  doc: Input comma-separated list of summarized taxa filepaths (i.e results from summarize_taxa.py)
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --counts_fname
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_taxa_summary.py
