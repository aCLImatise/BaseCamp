class: CommandLineTool
id: identify_paired_differences.py.cwl
inputs:
- id: mapping_fp
  doc: the input metadata map filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: output_dir
  doc: directory where output files should be saved [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: state_category
  doc: the mapping file column name to plot change over (usually has values like "pre-treatment"
    and "post- treatment") [REQUIRED]
  type: string
  inputBinding:
    prefix: --state_category
- id: state_values
  doc: ordered list of state values to test change over (defines direction of graphs,
    generally something like "pre-treatment,post-treatment"). currently limited to
    two states. [REQUIRED]
  type: string
  inputBinding:
    prefix: --state_values
- id: individual_id_category
  doc: the mapping file column name containing each individual's identifier (usually
    something like "personal_identifier") [REQUIRED]
  type: string
  inputBinding:
    prefix: --individual_id_category
outputs: []
cwlVersion: v1.1
baseCommand:
- identify_paired_differences.py
