#!/usr/bin/env cwl-runner

baseCommand:
- FastqExtract
class: CommandLineTool
cwlVersion: v1.0
id: fastqextract
inputs:
- doc: Input FASTQ file (gzipped or plain).
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Input TSV file containing IDs (without the '@') in the first column and optional
    length in the second column.
  id: ids
  inputBinding:
    prefix: -ids
  type: File
- doc: Output FASTQ file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Invert match: keep non-matching reads. Default value: 'false'"
  id: v
  inputBinding:
    prefix: -v
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
