class: CommandLineTool
id: xsv_join.cwl
inputs:
- id: no_case
  doc: When set, joins are done case insensitively.
  type: boolean
  inputBinding:
    prefix: --no-case
- id: left
  doc: Do a 'left outer' join. This returns all rows in first CSV data set, including
    rows with no corresponding row in the second data set. When no corresponding row
    exists, it is padded out with empty fields.
  type: boolean
  inputBinding:
    prefix: --left
- id: right
  doc: Do a 'right outer' join. This returns all rows in second CSV data set, including
    rows with no corresponding row in the first data set. When no corresponding row
    exists, it is padded out with empty fields. (This is the reverse of 'outer left'.)
  type: boolean
  inputBinding:
    prefix: --right
- id: full
  doc: Do a 'full outer' join. This returns all rows in both data sets with matching
    records joined. If there is no match, the missing side will be padded out with
    empty fields. (This is the combination of 'outer left' and 'outer right'.)
  type: boolean
  inputBinding:
    prefix: --full
- id: cross
  doc: USE WITH CAUTION. This returns the cartesian product of the CSV data sets given.
    The number of rows return is equal to N * M, where N and M correspond to the number
    of rows in the given data sets, respectively.
  type: boolean
  inputBinding:
    prefix: --cross
- id: nulls
  doc: When set, joins will work on empty fields. Otherwise, empty fields are completely
    ignored. (In fact, any row that has an empty field in the key specified is ignored.)
  type: boolean
  inputBinding:
    prefix: --nulls
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will not be interpreted as headers. (i.e., They are
    not searched, analyzed, sliced, etc.)
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: delimiter
  doc: 'The field delimiter for reading CSV data. Must be a single character. (default:
    ,)'
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- join
