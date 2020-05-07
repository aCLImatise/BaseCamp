class: CommandLineTool
id: estimate_observation_richness.py.cwl
inputs:
- id: otu_table_fp
  doc: 'path to the input BIOM table (e.g., the output from make_otu_table.py). IMPORTANT:
    This table should contain observation *counts* (integers), NOT relative abundances
    (fractions) [REQUIRED]'
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- estimate_observation_richness.py
