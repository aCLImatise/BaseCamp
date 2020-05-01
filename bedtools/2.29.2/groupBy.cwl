#!/usr/bin/env cwl-runner

baseCommand:
- groupBy
class: CommandLineTool
cwlVersion: v1.0
id: groupby
inputs:
- doc: ': sum'
  id: default
  inputBinding:
    prefix: '- Default'
  type: boolean
- doc: 'Print all columns from input file.  The first line in the group is used. Default:
    print only grouped columns.'
  id: full
  inputBinding:
    prefix: -full
  type: boolean
- doc: Input file has a header line - the first line will be ignored.
  id: in_header
  inputBinding:
    prefix: -inheader
  type: boolean
- doc: Print header line in the output, detailing the column names.  If the input
    file has headers (-inheader), the output file will use the input's column names.
    If the input file has no headers, the output file will use "col_1", "col_2", etc.
    as the column names.
  id: out_header
  inputBinding:
    prefix: -outheader
  type: boolean
- doc: same as '-inheader -outheader'
  id: header
  inputBinding:
    prefix: -header
  type: boolean
- doc: Group values regardless of upper/lower case.
  id: ignorecase
  inputBinding:
    prefix: -ignorecase
  type: boolean
- doc: 'Sets the decimal precision for output (Default: 5)'
  id: prec
  inputBinding:
    prefix: -prec
  type: boolean
- doc: 'Specify a custom delimiter for the collapse operations. - Example: -delim
    "|" - Default: ",".'
  id: delim
  inputBinding:
    prefix: -delim
  type: boolean
