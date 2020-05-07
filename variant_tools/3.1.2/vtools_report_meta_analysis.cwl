class: CommandLineTool
id: vtools_report_meta_analysis.cwl
inputs:
- id: file
  doc: Input text files in the format of $vtools associate output (supports plain
    text, gz or bz2 compressed text files)
  type: File
  inputBinding:
    position: 0
- id: beta
  doc: column number of beta
  type: string
  inputBinding:
    prefix: --beta
- id: pval
  doc: column number of p-value
  type: string
  inputBinding:
    prefix: --pval
- id: se
  doc: column number of standard error
  type: string
  inputBinding:
    prefix: --se
- id: size
  doc: column number of sample size
  type: string
  inputBinding:
    prefix: --size
- id: link
  doc: columns that links entries of two datasets
  type: string[]
  inputBinding:
    prefix: --link
- id: method
  doc: Method (choose from "ssb" for sample based method and "ivb" for inverse variance
    based method), default set to "ssb"
  type: string
  inputBinding:
    prefix: --method
- id: to_db
  doc: will write the results also to a sqlite3 database compatible with vtools associate
    result format
  type: string
  inputBinding:
    prefix: --to_db
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- meta_analysis
