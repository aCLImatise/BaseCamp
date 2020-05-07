class: CommandLineTool
id: groot_get.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: 'database to download (please choose: arg-annot/resfinder/card/groot-db/groot-core-db)
    (default "arg-annot")'
  type: string
  inputBinding:
    prefix: --database
- id: identity
  doc: the sequence identity used to cluster the database (only 90 available atm)
    (default "90")
  type: string
  inputBinding:
    prefix: --identity
- id: out
  doc: directory to save the database to (default ".")
  type: string
  inputBinding:
    prefix: --out
- id: index_dir
  doc: directory for to write/read the GROOT index files
  type: string
  inputBinding:
    prefix: --indexDir
- id: log
  doc: filename for log file (default "groot.log")
  type: string
  inputBinding:
    prefix: --log
- id: processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: profiling
  doc: create the files needed to profile GROOT using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs: []
cwlVersion: v1.1
baseCommand:
- groot
- get
