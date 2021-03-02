class: CommandLineTool
id: collect_columns.cwl
inputs:
- id: in_feature_column
  doc: "The position of the column with the (unique) feature\nids. Default to 0."
  type: long?
  inputBinding:
    prefix: --feature-column
- id: in_value_column
  doc: "The position of the column with the values of\ninterest. Defaults to 1."
  type: long?
  inputBinding:
    prefix: --value-column
- id: in_separator
  doc: "The separator used in the tables. This will also be\nused in the output table.\
    \ Defaults to a tab."
  type: string?
  inputBinding:
    prefix: --separator
- id: in_names_corresponding_order
  doc: "[NAME [NAME ...]], --names [NAME [NAME ...]]\nThe names of the samples corresponding\
    \ to the tables\n(in the same order as the tables). These will be used\nas headers\
    \ in the merged table. If not specified the\nbasenames of tables will be used."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_header
  doc: Whether or not the tables have a header. Defaults to
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_additional_attributes
  doc: "A list of attributes which will be added to the merged\ntable. These attributes\
    \ will be retrieved from the GTF\nor GFF file specified with the -g option. Multiple\n\
    values will be separator by a ';'. Requires -g to be\nspecified."
  type: string[]
  inputBinding:
    prefix: --additional-attributes
- id: in_gtf
  doc: "The GTF or GFF file from which the additional\nattributes (see -a) will be\
    \ retrieved. Ignored if -a\nis not specified. Required if -a is specified."
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_feature_attribute
  doc: "The attribute from the GTF/GFF used for matching the\nfeature records with\
    \ the rows in the table. Ignored if\n-a is not specified. Defaults to 'gene_id'.\n"
  type: string?
  inputBinding:
    prefix: --feature-attribute
- id: in_output
  doc: The path the output will be written to.
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: The tables to be merged.
  type: string
  inputBinding:
    position: 1
- id: in_false_dot
  doc: -S, --sum-on-duplicate-id
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/collect-columns:1.0.0--py_0
cwlVersion: v1.1
baseCommand:
- collect-columns
