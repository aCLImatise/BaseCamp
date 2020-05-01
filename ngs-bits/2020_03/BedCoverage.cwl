#!/usr/bin/env cwl-runner

baseCommand:
- BedCoverage
class: CommandLineTool
cwlVersion: v1.0
id: bedcoverage
inputs:
- doc: Input BAM file(s).
  id: bam
  inputBinding:
    prefix: -bam
  type: File
- doc: "Minimum mapping quality. Default value: '1'"
  id: min_mapq
  inputBinding:
    prefix: -min_mapq
  type: long
- doc: "Include reads marked as duplicates. Default value: 'false'"
  id: dup
  inputBinding:
    prefix: -dup
  type: boolean
- doc: "Input BED file (note that overlapping regions will be merged before processing).\
    \ If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Mode to optimize run time. Use 'panel' mode if only a small part of the data\
    \ in the BAM file is accessed, e.g. a sub-panel of an exome. Default value: 'default'\
    \ Valid: 'default,panel'"
  id: mode
  inputBinding:
    prefix: -mode
  type: string
- doc: "Number of decimals used in output. Default value: '2'"
  id: decimals
  inputBinding:
    prefix: -decimals
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
