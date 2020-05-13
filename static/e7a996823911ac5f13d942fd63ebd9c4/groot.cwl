class: CommandLineTool
id: groot.cwl
inputs:
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
