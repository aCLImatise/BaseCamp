#!/usr/bin/env cwl-runner

baseCommand:
- rtk
class: CommandLineTool
cwlVersion: v1.0
id: rtk
inputs:
- doc: path to an .txt file (tab delimited) to rarefy
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: path to a output directory
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times
    the minimal column sum.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Number of times to create diversity measures. Default is 10.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Number of rarefied tables to write.
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: 'Number of threads to use. Default: 1'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: If set, no temporary files will be used when writing rarefaction tables to
    disk.
  id: ns
  inputBinding:
    prefix: -ns
  type: boolean
