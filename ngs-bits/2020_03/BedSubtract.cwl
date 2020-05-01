#!/usr/bin/env cwl-runner

baseCommand:
- BedSubtract
class: CommandLineTool
cwlVersion: v1.0
id: bedsubtract
inputs:
- doc: Input BED file which is subtracted from 'in'.
  id: in2
  inputBinding:
    prefix: -in2
  type: File
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
