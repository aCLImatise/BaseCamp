class: CommandLineTool
id: vtools_report_meta_analysis.cwl
inputs:
- id: in_beta
  doc: column number of beta
  type: long?
  inputBinding:
    prefix: --beta
- id: in_pval
  doc: column number of p-value
  type: long?
  inputBinding:
    prefix: --pval
- id: in_se
  doc: column number of standard error
  type: long?
  inputBinding:
    prefix: --se
- id: in_size
  doc: column number of sample size
  type: long?
  inputBinding:
    prefix: --size
- id: in_link
  doc: columns that links entries of two datasets
  type: string[]
  inputBinding:
    prefix: --link
- id: in_method
  doc: "Method (choose from \"ssb\" for sample based method and\n\"ivb\" for inverse\
    \ variance based method), default set\nto \"ssb\""
  type: string?
  inputBinding:
    prefix: --method
- id: in_to_db
  doc: "will write the results also to a sqlite3 database\ncompatible with vtools\
    \ associate result format"
  type: long?
  inputBinding:
    prefix: --to_db
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_file
  doc: "Input text files in the format of $vtools associate\noutput (supports plain\
    \ text, gz or bz2 compressed text\nfiles)"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- meta_analysis
