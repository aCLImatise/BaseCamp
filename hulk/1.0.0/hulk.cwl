#!/usr/bin/env cwl-runner

baseCommand:
- hulk
class: CommandLineTool
cwlVersion: v1.0
id: hulk
inputs:
- doc: minimizer k-mer length (default 21)
  id: km_er_size
  inputBinding:
    prefix: --kmerSize
  type: string
- doc: filename for log file, if omitted then STDOUT used by default
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: directory and basename for saving the outfile(s) (default "./hulk-20200428124313")
  id: outfile
  inputBinding:
    prefix: --outFile
  type: string
- doc: number of processors to use (default 1)
  id: processors
  inputBinding:
    prefix: --processors
  type: long
- doc: create the files needed to profile HULK using the go tool pprof
  id: profiling
  inputBinding:
    prefix: --profiling
  type: boolean
