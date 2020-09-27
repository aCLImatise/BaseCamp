class: CommandLineTool
id: groot_get.cwl
inputs:
- id: in_database
  doc: 'database to download (please choose: arg-annot/resfinder/card/groot-db/groot-core-db)
    (default "arg-annot")'
  type: string
  inputBinding:
    prefix: --database
- id: in_identity
  doc: the sequence identity used to cluster the database (only 90 available atm)
    (default "90")
  type: long
  inputBinding:
    prefix: --identity
- id: in_out
  doc: directory to save the database to (default ".")
  type: Directory
  inputBinding:
    prefix: --out
- id: in_index_dir
  doc: directory for to write/read the GROOT index files
  type: Directory
  inputBinding:
    prefix: --indexDir
- id: in_log
  doc: filename for log file (default "groot.log")
  type: File
  inputBinding:
    prefix: --log
- id: in_processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile GROOT using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- groot
- get
