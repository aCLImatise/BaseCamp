class: CommandLineTool
id: group_significance.py.cwl
inputs:
- id: otu_table_fp
  doc: path to biom format table [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: mapping_fp
  doc: path to category mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: category
  doc: name of the category over which to run the analysis [REQUIRED]
  type: string
  inputBinding:
    prefix: --category
- id: output_fp
  doc: path to the output file [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- group_significance.py
