#!/usr/bin/env cwl-runner

baseCommand:
- BedReadCount
class: CommandLineTool
cwlVersion: v1.0
id: bedreadcount
inputs:
- doc: Input BAM file.
  id: bam
  inputBinding:
    prefix: -bam
  type: File
- doc: "Minimum mapping quality. Default value: '1'"
  id: min_mapq
  inputBinding:
    prefix: -min_mapq
  type: long
- doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN. Default value: ''"
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
