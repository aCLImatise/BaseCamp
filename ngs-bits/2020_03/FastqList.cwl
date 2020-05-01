#!/usr/bin/env cwl-runner

baseCommand:
- FastqList
class: CommandLineTool
cwlVersion: v1.0
id: fastqlist
inputs:
- doc: Input FASTQ file (gzipped or plain).
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
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
