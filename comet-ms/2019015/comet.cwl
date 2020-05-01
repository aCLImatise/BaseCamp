#!/usr/bin/env cwl-runner

baseCommand:
- comet.exe
class: CommandLineTool
cwlVersion: v1.0
id: comet.exe
inputs:
- doc: comet.exe -F1000 -L1500 file1.mzXML    <- to search scans 1000 through 1500
  id: or
  inputBinding:
    position: 0
  type: string
- doc: comet.exe -pParams.txt *.mzXML         <- use parameters in the file 'Params.txt'
  id: or
  inputBinding:
    position: 1
  type: string
- doc: to print out a comet.params file (named comet.params.new)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: <params> to specify an alternate parameters file (default comet.params)
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: <name>   to specify an alternate output base name; valid only with one input
    file
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: <dbase>  to specify a sequence database, overriding entry in parameters file
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: <num>    to specify the first/start scan to search, overriding entry in parameters
    file
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: <num>    to specify the last/end scan to search, overriding entry in parameters
    file (-L option is required if -F option is used)
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: create peptide index file only (specify .idx file as database for index search)
  id: i
  inputBinding:
    prefix: -i
  type: boolean
