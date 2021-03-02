class: CommandLineTool
id: pypgatk_cli.py_cosmic_to_proteindb.cwl
inputs:
- id: in_config_file
  doc: Configuration file for the cosmic data pipelines
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_input_mutation
  doc: Cosmic Mutation data file
  type: File?
  inputBinding:
    prefix: --input_mutation
- id: in_input_genes
  doc: All Cosmic genes
  type: string?
  inputBinding:
    prefix: --input_genes
- id: in_output_db
  doc: Protein database including all the mutations
  type: string?
  inputBinding:
    prefix: --output_db
- id: in_tissue_type
  doc: "Limit mutations to tissue types considered for\ngenerating proteinDBs, by\
    \ default mutations from\nall tissue types are considered"
  type: string?
  inputBinding:
    prefix: --tissue_type
- id: in_split_by_tissue_type
  doc: "Use this flag to generate a proteinDB per tissue\ntype as specified in the\
    \ Primary site column,\ndefault is False"
  type: boolean?
  inputBinding:
    prefix: --split_by_tissue_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- cosmic-to-proteindb
