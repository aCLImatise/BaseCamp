class: CommandLineTool
id: collect_columns.cwl
inputs:
- id: output
  doc: The path the output will be written to.
  type: string
  inputBinding:
    position: 0
- id: table
  doc: The tables to be merged.
  type: string
  inputBinding:
    position: 1
- id: feature_column
  doc: The position of the column with the (unique) feature ids. Default to 0.
  type: string
  inputBinding:
    prefix: --feature-column
- id: value_column
  doc: The position of the column with the values of interest. Defaults to 1.
  type: string
  inputBinding:
    prefix: --value-column
- id: separator
  doc: The separator used in the tables. This will also be used in the output table.
    Defaults to a tab.
  type: string
  inputBinding:
    prefix: --separator
- id: n
  doc: '[NAME [NAME ...]], --names [NAME [NAME ...]] The names of the samples corresponding
    to the tables (in the same order as the tables). These will be used as headers
    in the merged table. If not specified the basenames of tables will be used.'
  type: boolean
  inputBinding:
    prefix: -n
- id: header
  doc: Whether or not the tables have a header. Defaults to false.
  type: boolean
  inputBinding:
    prefix: --header
- id: additional_attributes
  doc: A list of attributes which will be added to the merged table. These attributes
    will be retrieved from the GTF or GFF file specified with the -g option. Multiple
    values will be separator by a ';'. Requires -g to be specified.
  type: string[]
  inputBinding:
    prefix: --additional-attributes
- id: gtf
  doc: The GTF or GFF file from which the additional attributes (see -a) will be retrieved.
    Ignored if -a is not specified. Required if -a is specified.
  type: File
  inputBinding:
    prefix: --gtf
- id: feature_attribute
  doc: The attribute from the GTF/GFF used for matching the feature records with the
    rows in the table. Ignored if -a is not specified. Defaults to 'gene_id'.
  type: string
  inputBinding:
    prefix: --feature-attribute
outputs: []
cwlVersion: v1.1
baseCommand:
- collect-columns
