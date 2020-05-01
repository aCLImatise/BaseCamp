#!/usr/bin/env cwl-runner

baseCommand:
- VcfSort
class: CommandLineTool
cwlVersion: v1.0
id: vcfsort
inputs:
- doc: Input variant list.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output variant list.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Also sort according to variant quality. Ignored if 'fai' file is given. Default\
    \ value: 'false'"
  id: qual
  inputBinding:
    prefix: -qual
  type: boolean
- doc: "FAI file defining different chromosome order. Default value: ''"
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
