class: CommandLineTool
id: split_otu_table_by_taxonomy.py.cwl
inputs:
- id: input_fp
  doc: the input otu table in BIOM format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: level
  doc: the taxonomic level to split at [REQUIRED]
  type: string
  inputBinding:
    prefix: --level
outputs: []
cwlVersion: v1.1
baseCommand:
- split_otu_table_by_taxonomy.py
