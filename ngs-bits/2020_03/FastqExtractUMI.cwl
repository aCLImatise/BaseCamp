#!/usr/bin/env cwl-runner

baseCommand:
- FastqExtractUMI
class: CommandLineTool
cwlVersion: v1.0
id: fastqextractumi
inputs:
- doc: Input FASTQ file 1.
  id: in1
  inputBinding:
    prefix: -in1
  type: File
- doc: Input FASTQ file 2.
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: Output filename for read 1 FASTQ.
  id: out1
  inputBinding:
    prefix: -out1
  type: File
- doc: Output filename for read 2 FASTQ.
  id: out2
  inputBinding:
    prefix: -out2
  type: File
- doc: "Number of bases from the head of read 1 to use as UMI. Default value: '0'"
  id: cut1
  inputBinding:
    prefix: -cut1
  type: long
- doc: "Number of bases from the head of read 2 to use as UMI. Default value: '0'"
  id: cut2
  inputBinding:
    prefix: -cut2
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
