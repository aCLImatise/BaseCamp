#!/usr/bin/env cwl-runner

baseCommand:
- BedAdd
class: CommandLineTool
cwlVersion: v1.0
id: bedadd
inputs:
- doc: Input BED files.
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
