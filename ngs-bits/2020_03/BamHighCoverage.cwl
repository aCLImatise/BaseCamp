#!/usr/bin/env cwl-runner

baseCommand:
- BamHighCoverage
class: CommandLineTool
cwlVersion: v1.0
id: bamhighcoverage
inputs:
- doc: Input BAM file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Minimum depth to consider a chromosomal position 'high coverage'.
  id: cut_off
  inputBinding:
    prefix: -cutoff
  type: long
- doc: "Minimum mapping quality. Default value: '1'"
  id: min_mapq
  inputBinding:
    prefix: -min_mapq
  type: long
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
