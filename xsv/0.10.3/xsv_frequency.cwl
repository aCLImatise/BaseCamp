class: CommandLineTool
id: xsv_frequency.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: select
  doc: Select a subset of columns to compute frequencies for. See 'xsv select --help'
    for the format details. This is provided here because piping 'xsv select' into
    'xsv frequency' will disable the use of indexing.
  type: string
  inputBinding:
    prefix: --select
- id: limit
  doc: "Limit the frequency table to the N most common items. Set to '0' to disable\
    \ a limit. [default: 10]"
  type: string
  inputBinding:
    prefix: --limit
- id: asc
  doc: Sort the frequency tables in ascending order by count. The default is descending
    order.
  type: boolean
  inputBinding:
    prefix: --asc
- id: no_nulls
  doc: Don't include NULLs in the frequency table.
  type: boolean
  inputBinding:
    prefix: --no-nulls
- id: jobs
  doc: "The number of jobs to run in parallel. This works better when the given CSV\
    \ data has an index already created. Note that a file handle is opened for each\
    \ job. When set to '0', the number of jobs is set to the number of CPUs detected.\
    \ [default: 0]"
  type: string
  inputBinding:
    prefix: --jobs
- id: output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: no_headers
  doc: When set, the first row will NOT be included in the frequency table. Additionally,
    the 'field' column will be 1-based indices instead of header names.
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
- frequency
