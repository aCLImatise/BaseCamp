#!/usr/bin/env cwl-runner

baseCommand:
- FastqTrim
class: CommandLineTool
cwlVersion: v1.0
id: fastqtrim
inputs:
- doc: Input gzipped FASTQ file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output gzipped FASTQ file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Trim this number of bases from the start of the read. Default value: '0'"
  id: start
  inputBinding:
    prefix: -start
  type: long
- doc: "Trim this number of bases from the end of the read. Default value: '0'"
  id: end
  inputBinding:
    prefix: -end
  type: long
- doc: "Restrict read length to this value (after trimming from start/end). Default\
    \ value: '0'"
  id: len
  inputBinding:
    prefix: -len
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
