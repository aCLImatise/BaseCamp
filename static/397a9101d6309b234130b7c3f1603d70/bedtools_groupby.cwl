class: CommandLineTool
id: bedtools_groupby.cwl
inputs:
- id: default
  doc: ': sum'
  type: boolean
  inputBinding:
    prefix: '- Default'
- id: full
  doc: 'Print all columns from input file.  The first line in the group is used. Default:
    print only grouped columns.'
  type: boolean
  inputBinding:
    prefix: -full
- id: in_header
  doc: Input file has a header line - the first line will be ignored.
  type: boolean
  inputBinding:
    prefix: -inheader
- id: out_header
  doc: Print header line in the output, detailing the column names.  If the input
    file has headers (-inheader), the output file will use the input's column names.
    If the input file has no headers, the output file will use "col_1", "col_2", etc.
    as the column names.
  type: boolean
  inputBinding:
    prefix: -outheader
- id: header
  doc: same as '-inheader -outheader'
  type: boolean
  inputBinding:
    prefix: -header
- id: ignorecase
  doc: Group values regardless of upper/lower case.
  type: boolean
  inputBinding:
    prefix: -ignorecase
- id: prec
  doc: 'Sets the decimal precision for output (Default: 5)'
  type: boolean
  inputBinding:
    prefix: -prec
- id: delim
  doc: 'Specify a custom delimiter for the collapse operations. - Example: -delim
    "|" - Default: ",".'
  type: boolean
  inputBinding:
    prefix: -delim
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- groupby
