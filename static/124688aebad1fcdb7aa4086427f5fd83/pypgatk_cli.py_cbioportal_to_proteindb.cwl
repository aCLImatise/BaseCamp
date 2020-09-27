class: CommandLineTool
id: pypgatk_cli.py_cbioportal_to_proteindb.cwl
inputs:
- id: in_config_file
  doc: Configuration for cbioportal to proteindb
  type: string
  inputBinding:
    prefix: --config_file
- id: in_input_cds
  doc: CDS genes from ENSEMBL database
  type: string
  inputBinding:
    prefix: --input_cds
- id: in_output_db
  doc: Protein database including all the mutations
  type: string
  inputBinding:
    prefix: --output_db
- id: in_tissue_type
  doc: "Limit mutations to tissue types considered\nfor generating proteinDBs, by\
    \ default\nmutations from all tissue types are\nconsidered"
  type: string
  inputBinding:
    prefix: --tissue_type
- id: in_split_by_tissue_type
  doc: "Use this flag to generate a proteinDB per\ntissue type as specified in the\
    \ Primary site\ncolumn, default is False"
  type: boolean
  inputBinding:
    prefix: --split_by_tissue_type
- id: in_clinical_sample_file
  doc: "File to get tissue type from for the samples\nin input_mutation file"
  type: File
  inputBinding:
    prefix: --clinical_sample_file
- id: in_tool
  doc: -in, --input_mutation TEXT      Cbioportal mutation file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- cbioportal-to-proteindb
