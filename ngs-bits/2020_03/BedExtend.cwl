#!/usr/bin/env cwl-runner

baseCommand:
- BedExtend
class: CommandLineTool
cwlVersion: v1.0
id: bedextend
inputs:
- doc: The number of bases to extend (on both sides of each region).
  id: n
  inputBinding:
    prefix: -n
  type: long
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
- doc: "Optional FASTA index file that determines the maximum position for each chromosome.\
    \ Default value: ''"
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
