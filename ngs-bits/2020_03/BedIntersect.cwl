#!/usr/bin/env cwl-runner

baseCommand:
- BedIntersect
class: CommandLineTool
cwlVersion: v1.0
id: bedintersect
inputs:
- doc: Second input BED file.
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: "Output mode: intersect of both files (intersect), original entry of file 1\
    \ (in) or original entry of file 2 (in2). Default value: 'intersect' Valid: 'intersect,in,in2'"
  id: mode
  inputBinding:
    prefix: -mode
  type: string
- doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
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
