class: CommandLineTool
id: xsv_stats.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: select
  doc: Select a subset of columns to compute stats for. See 'xsv select --help' for
    the format details. This is provided here because piping 'xsv select' into 'xsv
    stats' will disable the use of indexing.
  type: string
  inputBinding:
    prefix: --select
- id: everything
  doc: Show all statistics available.
  type: boolean
  inputBinding:
    prefix: --everything
- id: mode
  doc: Show the mode. This requires storing all CSV data in memory.
  type: boolean
  inputBinding:
    prefix: --mode
- id: cardinality
  doc: Show the cardinality. This requires storing all CSV data in memory.
  type: boolean
  inputBinding:
    prefix: --cardinality
- id: median
  doc: Show the median. This requires storing all CSV data in memory.
  type: boolean
  inputBinding:
    prefix: --median
- id: nulls
  doc: Include NULLs in the population size for computing mean and standard deviation.
  type: boolean
  inputBinding:
    prefix: --nulls
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
  doc: When set, the first row will NOT be interpreted as column names. i.e., They
    will be included in statistics.
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
- stats
