#!/usr/bin/env cwl-runner

baseCommand:
- FastqFormat
class: CommandLineTool
cwlVersion: v1.0
id: fastqformat
inputs:
- doc: Input FASTQ file (gzipped or plain).
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output text file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The number of reads to parse. Default value: '10000'"
  id: reads
  inputBinding:
    prefix: -reads
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
