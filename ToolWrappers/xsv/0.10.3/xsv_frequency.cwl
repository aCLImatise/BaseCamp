class: CommandLineTool
id: xsv_frequency.cwl
inputs:
- id: in_select
  doc: "Select a subset of columns to compute frequencies\nfor. See 'xsv select --help'\
    \ for the format\ndetails. This is provided here because piping 'xsv\nselect'\
    \ into 'xsv frequency' will disable the use\nof indexing."
  type: string?
  inputBinding:
    prefix: --select
- id: in_limit
  doc: "Limit the frequency table to the N most common\nitems. Set to '0' to disable\
    \ a limit.\n[default: 10]"
  type: long?
  inputBinding:
    prefix: --limit
- id: in_asc
  doc: "Sort the frequency tables in ascending order by\ncount. The default is descending\
    \ order."
  type: boolean?
  inputBinding:
    prefix: --asc
- id: in_no_nulls
  doc: Don't include NULLs in the frequency table.
  type: boolean?
  inputBinding:
    prefix: --no-nulls
- id: in_jobs
  doc: "The number of jobs to run in parallel.\nThis works better when the given CSV\
    \ data has\nan index already created. Note that a file handle\nis opened for each\
    \ job.\nWhen set to '0', the number of jobs is set to the\nnumber of CPUs detected.\n\
    [default: 0]"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will NOT be included\nin the frequency table. Additionally,\
    \ the 'field'\ncolumn will be 1-based indices instead of header\nnames."
  type: boolean?
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string?
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- frequency
