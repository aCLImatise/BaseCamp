class: CommandLineTool
id: split_otu_table.py.cwl
inputs:
- id: biom_table_fp
  doc: The input biom table file path. [REQUIRED]
  type: string
  inputBinding:
    prefix: --biom_table_fp
- id: mapping_fp
  doc: The mapping file path. [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: fields
  doc: Mapping columns to split biom table on, comma separated. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fields
- id: output_dir
  doc: File path to the output directory to be created. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- split_otu_table.py
