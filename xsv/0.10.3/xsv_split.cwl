class: CommandLineTool
id: xsv_split.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: size
  doc: 'The number of records to write into each chunk. [default: 500]'
  type: string
  inputBinding:
    prefix: --size
- id: jobs
  doc: "The number of spliting jobs to run in parallel. This only works when the given\
    \ CSV data has an index already created. Note that a file handle is opened for\
    \ each job. When set to '0', the number of jobs is set to the number of CPUs detected.\
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
  doc: When set, the first row will NOT be interpreted as column names. Otherwise,
    the first row will appear in all chunks as the header row.
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
- split
