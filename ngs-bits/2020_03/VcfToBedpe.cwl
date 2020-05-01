#!/usr/bin/env cwl-runner

baseCommand:
- VcfToBedpe
class: CommandLineTool
cwlVersion: v1.0
id: vcftobedpe
inputs:
- doc: Input structural variant list in VCF format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output structural variant list in BEDPE format.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Do not sort results Default value: 'false'"
  id: no_sort
  inputBinding:
    prefix: -no_sort
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
