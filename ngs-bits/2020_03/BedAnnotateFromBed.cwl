#!/usr/bin/env cwl-runner

baseCommand:
- BedAnnotateFromBed
class: CommandLineTool
cwlVersion: v1.0
id: bedannotatefrombed
inputs:
- doc: BED file that is used as annotation source.
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Annotation source column (if column number does not exist, 'yes' is used).\
    \ Default value: '4'"
  id: col
  inputBinding:
    prefix: -col
  type: long
- doc: "Clear all annotations present in the 'in' file. Default value: 'false'"
  id: clear
  inputBinding:
    prefix: -clear
  type: boolean
- doc: "Remove duplicate annotations if several intervals from 'in2' overlap. Default\
    \ value: 'false'"
  id: no_duplicates
  inputBinding:
    prefix: -no_duplicates
  type: boolean
- doc: "Annotate overlap with regions in 'in2'. The regular annotation is appended\
    \ in brackets. Default value: 'false'"
  id: overlap
  inputBinding:
    prefix: -overlap
  type: boolean
- doc: "Decode URL encoded characters Default value: 'false'"
  id: url_decode
  inputBinding:
    prefix: -url_decode
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
