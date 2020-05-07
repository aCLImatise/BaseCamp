class: CommandLineTool
id: vtools_output.cwl
inputs:
- id: table
  doc: variants to output.
  type: string
  inputBinding:
    position: 0
- id: fields
  doc: A list of fields that will be outputted. SQL- compatible expressions or functions
    such as "pos-1", "count(1)" or "sum(num)" are also allowed.
  type: string
  inputBinding:
    position: 1
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: header
  doc: '[HEADER [HEADER ...]] A complete header or a list of names that will be joined
    by a delimiter (parameter --delimiter). If a special name - is specified, the
    header will be read from the standard input, which is the preferred way to specify
    large multi-line headers (e.g. cat myheader | vtools export --header -). If this
    parameter is given without parameter, a default header will be derived from field
    names.'
  type: boolean
  inputBinding:
    prefix: --header
- id: delimiter
  doc: Delimiter use to separate columns of output. The default output uses tabs to
    delimit columns padded to the same width by spaces. You can use '-d,' for csv
    output, or -d'\t' for unpadded tab-delimited output.
  type: string
  inputBinding:
    prefix: --delimiter
- id: precision
  doc: Precision used to output float numbers. The default value is None which uses
    system default (e.g. whatever str(number) outputs). You can set it to a positive
    number (e.g. 4) to limit the number of digits to output.
  type: string
  inputBinding:
    prefix: --precision
- id: na
  doc: Output string for missing value
  type: string
  inputBinding:
    prefix: --na
- id: limit
  doc: Limit output to the first N records.
  type: string
  inputBinding:
    prefix: --limit
- id: build
  doc: Output reference genome. If set to alternative build, chr and pos in the fields
    will be replaced by alt_chr and alt_pos
  type: string
  inputBinding:
    prefix: --build
- id: g
  doc: '[FIELD [FIELD ...]], --group_by [FIELD [FIELD ...]], --group-by [FIELD [FIELD
    ...]] Group output by fields. This option is useful for aggregation output where
    summary statistics are grouped by one or more fields.'
  type: boolean
  inputBinding:
    prefix: -g
- id: all
  doc: Variant tools by default output only one of the records if a variant matches
    multiple records in an annotation database. This option tells variant tools to
    output all matching records.
  type: boolean
  inputBinding:
    prefix: --all
- id: order_by
  doc: Order output by specified fields in ascending order, or descending order if
    field name is followed by DESC (e.g. --order_by 'num DESC')
  type: string[]
  inputBinding:
    prefix: --order_by
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- output
