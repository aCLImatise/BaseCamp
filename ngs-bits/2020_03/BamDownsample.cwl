#!/usr/bin/env cwl-runner

baseCommand:
- BamDownsample
class: CommandLineTool
cwlVersion: v1.0
id: bamdownsample
inputs:
- doc: Input BAM file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Percentage of reads to keep.
  id: percentage
  inputBinding:
    prefix: -percentage
  type: long
- doc: Output BAM file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Test mode: fix random number generator seed and write kept read names to STDOUT.\
    \ Default value: 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
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
