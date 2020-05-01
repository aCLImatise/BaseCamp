#!/usr/bin/env cwl-runner

baseCommand:
- ReadQC
class: CommandLineTool
cwlVersion: v1.0
id: readqc
inputs:
- doc: Forward input gzipped FASTQ file(s).
  id: in1
  inputBinding:
    prefix: -in1
  type: File
- doc: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads\
    \ as 'in1'). Default value: ''"
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Writes TXT format instead of qcML. Default value: 'false'"
  id: txt
  inputBinding:
    prefix: -txt
  type: boolean
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
