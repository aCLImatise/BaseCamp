class: CommandLineTool
id: ../../../xsv_split.cwl
inputs:
- id: in_size
  doc: "The number of records to write into each chunk.\n[default: 500]"
  type: long
  inputBinding:
    prefix: --size
- id: in_jobs
  doc: "The number of spliting jobs to run in parallel.\nThis only works when the\
    \ given CSV data has\nan index already created. Note that a file handle\nis opened\
    \ for each job.\nWhen set to '0', the number of jobs is set to the\nnumber of\
    \ CPUs detected.\n[default: 0]"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will NOT be interpreted\nas column names. Otherwise,\
    \ the first row will\nappear in all chunks as the header row."
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- split
