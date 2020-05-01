#!/usr/bin/env cwl-runner

baseCommand:
- mobster
class: CommandLineTool
cwlVersion: v1.0
id: mobster
inputs:
- doc: '[properties]'
  id: properties
  inputBinding:
    prefix: -properties
  type: boolean
- doc: '[input .bam file]. This value will override corresponding value in properties
    file. Multiple BAM files may be specified if seperated by a comma'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: '[output prefix]. This value will override corresponding value in properties
    file.'
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: '[sample name]. This value will override corresponding value in properties
    file. Multiple sample names may be specified if seperated by a comma'
  id: sn
  inputBinding:
    prefix: -sn
  type: boolean
