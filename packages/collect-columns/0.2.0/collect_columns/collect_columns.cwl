class: CommandLineTool
id: collect_columns.cwl
inputs:
- id: in_feature_column
  doc: "The position of the column with the (unique) feature\nids. Default to 0."
  type: long
  inputBinding:
    prefix: --feature-column
- id: in_value_column
  doc: "The position of the column with the values of\ninterest. Defaults to 1."
  type: long
  inputBinding:
    prefix: --value-column
- id: in_separator
  doc: "The separator used in the tables. This will also be\nused in the output table.\
    \ Defaults to a tab."
  type: string
  inputBinding:
    prefix: --separator
- id: in_names_corresponding_order
  doc: "[NAME [NAME ...]], --names [NAME [NAME ...]]\nThe names of the samples corresponding\
    \ to the tables\n(in the same order as the tables). These will be used\nas headers\
    \ in the merged table. If not specified the\nbasenames of tables will be used."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_header
  doc: Whether or not the tables have a header. Defaults to
  type: boolean
  inputBinding:
    prefix: --header
- id: in_feature_attribute
  doc: "The attribute from the GTF/GFF used for matching the\nfeature records with\
    \ the rows in the table. Ignored if\n-a is not specified. Defaults to 'gene_id'.\n"
  type: string
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
  doc: -a ATTR [ATTR ...], --additional-attributes ATTR [ATTR ...]
  type: string
  inputBinding:
    position: 0
- id: in_specified_dot
  doc: -g FILE, --gtf FILE, --gff FILE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- collect-columns
