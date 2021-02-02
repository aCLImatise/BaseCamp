class: CommandLineTool
id: ../../../hulk.cwl
inputs:
- id: in_km_er_size
  doc: minimizer k-mer length (default 21)
  type: long
  inputBinding:
    prefix: --kmerSize
- id: in_log
  doc: filename for log file, if omitted then STDOUT used by default
  type: File
  inputBinding:
    prefix: --log
- id: in_outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200909212820")
  type: Directory
  inputBinding:
    prefix: --outFile
- id: in_processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile HULK using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hulk
