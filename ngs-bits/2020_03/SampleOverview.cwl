#!/usr/bin/env cwl-runner

baseCommand:
- SampleOverview
class: CommandLineTool
cwlVersion: v1.0
id: sampleoverview
inputs:
- doc: Input variant lists in GSvar format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output variant list file in GSvar format.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Window to consider around indel positions to compensate for differing alignments.\
    \ Default value: '100'"
  id: window
  inputBinding:
    prefix: -window
  type: long
- doc: "Comma-separated list of input columns that shall be added to the output. By\
    \ default, all columns that are present in all input files. Default value: '[auto]'"
  id: add_cols
  inputBinding:
    prefix: -add_cols
  type: string
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
