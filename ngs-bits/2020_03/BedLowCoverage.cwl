#!/usr/bin/env cwl-runner

baseCommand:
- BedLowCoverage
class: CommandLineTool
cwlVersion: v1.0
id: bedlowcoverage
inputs:
- doc: Input BAM file.
  id: bam
  inputBinding:
    prefix: -bam
  type: File
- doc: Minimum depth to consider a base 'high coverage'.
  id: cut_off
  inputBinding:
    prefix: -cutoff
  type: long
- doc: "Input BED file containing the regions of interest. If unset, reads from STDIN.\
    \ Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "WGS mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  id: wgs
  inputBinding:
    prefix: -wgs
  type: boolean
- doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimum mapping quality to consider a read. Default value: '1'"
  id: min_mapq
  inputBinding:
    prefix: -min_mapq
  type: long
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
