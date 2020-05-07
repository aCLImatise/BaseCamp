class: CommandLineTool
id: beta_diversity_through_plots.py.cwl
inputs:
- id: otu_table_fp
  doc: the input biom table [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: mapping_fp
  doc: path to the mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- beta_diversity_through_plots.py
