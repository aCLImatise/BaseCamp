#!/usr/bin/env cwl-runner

baseCommand:
- FastqConcat
class: CommandLineTool
cwlVersion: v1.0
id: fastqconcat
inputs:
- doc: Input (gzipped) FASTQ files.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output gzipped FASTQ file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "gzip compression level from 1 (fastest) to 9 (best compression). Default value:\
    \ '1'"
  id: compression_level
  inputBinding:
    prefix: -compression_level
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
