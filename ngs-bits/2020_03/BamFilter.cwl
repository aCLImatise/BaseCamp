#!/usr/bin/env cwl-runner

baseCommand:
- BamFilter
class: CommandLineTool
cwlVersion: v1.0
id: bamfilter
inputs:
- doc: Input BAM file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output BAM file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimum mapping quality. Default value: '30'"
  id: min_mq
  inputBinding:
    prefix: -minMQ
  type: long
- doc: "Maximum number of mismatches in aligned read, -1 to disable. Default value:\
    \ '4'"
  id: max_mm
  inputBinding:
    prefix: -maxMM
  type: long
- doc: "Maximum number of gaps (indels) in aligned read, -1 to disable. Default value:\
    \ '1'"
  id: max_gap
  inputBinding:
    prefix: -maxGap
  type: long
- doc: "Minimum number of duplicates. Default value: '0'"
  id: mind_up
  inputBinding:
    prefix: -minDup
  type: long
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
