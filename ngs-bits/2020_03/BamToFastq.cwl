#!/usr/bin/env cwl-runner

baseCommand:
- BamToFastq
class: CommandLineTool
cwlVersion: v1.0
id: bamtofastq
inputs:
- doc: Input BAM file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Read 1 output FASTQ.GZ file.
  id: out1
  inputBinding:
    prefix: -out1
  type: File
- doc: Read 2 output FASTQ.GZ file.
  id: out2
  inputBinding:
    prefix: -out2
  type: File
- doc: "Does not export duplicate reads into the FASTQ file. Default value: 'false'"
  id: remove_duplicates
  inputBinding:
    prefix: -remove_duplicates
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
