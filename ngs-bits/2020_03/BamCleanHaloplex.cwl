#!/usr/bin/env cwl-runner

baseCommand:
- BamCleanHaloplex
class: CommandLineTool
cwlVersion: v1.0
id: bamcleanhaloplex
inputs:
- doc: Input bam file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output bam file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimum number of CIGAR matches (M). Default value: '30'"
  id: min_match
  inputBinding:
    prefix: -min_match
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
