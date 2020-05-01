#!/usr/bin/env cwl-runner

baseCommand:
- BedMerge
class: CommandLineTool
cwlVersion: v1.0
id: bedmerge
inputs:
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
- doc: "Do not merge non-overlapping but adjacent (back-to-back) regions. Default\
    \ value: 'false'"
  id: keep_b2b
  inputBinding:
    prefix: -keep_b2b
  type: boolean
- doc: "Merge name columns instead of removing all annotations. Default value: 'false'"
  id: merge_names
  inputBinding:
    prefix: -merge_names
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
