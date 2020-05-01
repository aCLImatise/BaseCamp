#!/usr/bin/env cwl-runner

baseCommand:
- BedInfo
class: CommandLineTool
cwlVersion: v1.0
id: bedinfo
inputs:
- doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "If set, the input is not merged before printing statistics. Default value:\
    \ 'false'"
  id: no_merge
  inputBinding:
    prefix: -nomerge
  type: boolean
- doc: "If set, prints the input file name before each line. Default value: 'false'"
  id: filename
  inputBinding:
    prefix: -filename
  type: boolean
- doc: "If set, checks that the maximum position for each chromosome is not exceeded.\
    \ Default value: ''"
  id: fai
  inputBinding:
    prefix: -fai
  type: File
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
