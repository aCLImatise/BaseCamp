#!/usr/bin/env cwl-runner

baseCommand:
- SampleDiff
class: CommandLineTool
cwlVersion: v1.0
id: samplediff
inputs:
- doc: Input variant list in GSvar format.
  id: in1
  inputBinding:
    prefix: -in1
  type: File
- doc: Input variant list in GSvar format.
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
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
- doc: "Allow non-exact indel matches. If set, all indels in the window are considered\
    \ matches. Default value: 'false'"
  id: nei
  inputBinding:
    prefix: -nei
  type: boolean
- doc: "Also show matches. If unset, matching variants are not printed. Default value:\
    \ 'false'"
  id: sm
  inputBinding:
    prefix: -sm
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
