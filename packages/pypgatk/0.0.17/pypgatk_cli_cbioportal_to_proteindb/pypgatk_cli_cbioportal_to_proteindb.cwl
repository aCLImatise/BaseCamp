class: CommandLineTool
id: pypgatk_cli_cbioportal_to_proteindb.cwl
inputs:
- id: in_config_file
  doc: Configuration for cbioportal to proteindb
  type: string?
  inputBinding:
    prefix: --config_file
- id: in_input_cds
  doc: CDS genes from ENSEMBL database
  type: string?
  inputBinding:
    prefix: --input_cds
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
  doc: "Limit mutations to values (tissue type,\nsample name, etc) considered for\
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
- id: in_clinical_sample_file
  doc: "File to get tissue type from for the samples\nin input_mutation file"
  type: File?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.17--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- cbioportal-to-proteindb
