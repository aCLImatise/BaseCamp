class: CommandLineTool
id: xsv_stats.cwl
inputs:
- id: in_select
  doc: "Select a subset of columns to compute stats for.\nSee 'xsv select --help'\
    \ for the format details.\nThis is provided here because piping 'xsv select'\n\
    into 'xsv stats' will disable the use of indexing."
  type: string
  inputBinding:
    prefix: --select
- id: in_everything
  doc: Show all statistics available.
  type: boolean
  inputBinding:
    prefix: --everything
- id: in_mode
  doc: "Show the mode.\nThis requires storing all CSV data in memory."
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_cardinality
  doc: "Show the cardinality.\nThis requires storing all CSV data in memory."
  type: boolean
  inputBinding:
    prefix: --cardinality
- id: in_median
  doc: "Show the median.\nThis requires storing all CSV data in memory."
  type: boolean
  inputBinding:
    prefix: --median
- id: in_nulls
  doc: "Include NULLs in the population size for computing\nmean and standard deviation."
  type: boolean
  inputBinding:
    prefix: --nulls
- id: in_jobs
  doc: "The number of jobs to run in parallel.\nThis works better when the given CSV\
    \ data has\nan index already created. Note that a file handle\nis opened for each\
    \ job.\nWhen set to '0', the number of jobs is set to the\nnumber of CPUs detected.\n\
    [default: 0]"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will NOT be interpreted\nas column names. i.e., They\
    \ will be included\nin statistics."
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- xsv
- stats
