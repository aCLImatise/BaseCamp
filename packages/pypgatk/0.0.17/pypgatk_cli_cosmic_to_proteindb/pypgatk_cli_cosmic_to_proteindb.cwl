class: CommandLineTool
id: pypgatk_cli_cosmic_to_proteindb.cwl
inputs:
- id: in_config_file
  doc: Configuration file for the cosmic data
  type: File?
  inputBinding:
    prefix: --config_file
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
- id: in_filter_column
  doc: "Column in the VCF file to be used for\nfiltering or splitting mutations"
  type: File?
  inputBinding:
    prefix: --filter_column
- id: in_accepted_values
  doc: "Limit mutations to values (tissue type, sample\nname, etc) considered for\
    \ generating\nproteinDBs, by default mutations from all\nrecords are considered"
  type: string?
  inputBinding:
    prefix: --accepted_values
- id: in_split_by_filter_column
  doc: "Use this flag to generate a proteinDB per\ngroup as specified in the filter_column,\n\
    default is False"
  type: boolean?
  inputBinding:
    prefix: --split_by_filter_column
- id: in_pipelines
  doc: -in, --input_mutation TEXT    Cosmic Mutation data file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.17--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- cosmic-to-proteindb
