#!/usr/bin/env cwl-runner

baseCommand:
- BedpeAnnotateFromBed
class: CommandLineTool
cwlVersion: v1.0
id: bedpeannotatefrombed
inputs:
- doc: BED file that is used as annotation source.
  id: bed
  inputBinding:
    prefix: -bed
  type: File
- doc: "Input BEDPE file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output BEDPE file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Annotation source column (default: 4). Default value: '4'"
  id: col
  inputBinding:
    prefix: -col
  type: long
- doc: "Name of the annotated column Default value: 'ANNOTATION'"
  id: col_name
  inputBinding:
    prefix: -col_name
  type: string
- doc: "Remove duplicate annotations if several intervals from 'in2' overlap. Default\
    \ value: 'false'"
  id: no_duplicates
  inputBinding:
    prefix: -no_duplicates
  type: boolean
- doc: "Decode URL encoded characters. Default value: 'false'"
  id: url_decode
  inputBinding:
    prefix: -url_decode
  type: boolean
- doc: "Replaces underscores with spaces in the annotation column. Default value:\
    \ 'false'"
  id: replace_underscore
  inputBinding:
    prefix: -replace_underscore
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
