#!/usr/bin/env cwl-runner

baseCommand:
- FastqMidParser
class: CommandLineTool
cwlVersion: v1.0
id: fastqmidparser
inputs:
- doc: Input gzipped FASTQ file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TXT file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The number of FASTQ entries in the input file to parse. 0 is unlimited. Default\
    \ value: '1000'"
  id: lines
  inputBinding:
    prefix: -lines
  type: long
- doc: "The number of top-ranking MIDs to print. 0 is unlimited. Default value: '20'"
  id: mids
  inputBinding:
    prefix: -mids
  type: long
- doc: "Optional sample sheet CSV file as provided to CASAVA. If given, the closest\
    \ match in the sample sheet is printed after each MID. Default value: ''"
  id: sheet
  inputBinding:
    prefix: -sheet
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
