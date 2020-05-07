class: CommandLineTool
id: hulk.cwl
inputs:
- id: km_er_size
  doc: minimizer k-mer length (default 21)
  type: string
  inputBinding:
    prefix: --kmerSize
- id: log
  doc: filename for log file, if omitted then STDOUT used by default
  type: string
  inputBinding:
    prefix: --log
- id: outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200428124313")
  type: string
  inputBinding:
    prefix: --outFile
- id: processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: profiling
  doc: create the files needed to profile HULK using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs: []
cwlVersion: v1.1
baseCommand:
- hulk
