#!/usr/bin/env cwl-runner

baseCommand:
- VariantFilterRegions
class: CommandLineTool
cwlVersion: v1.0
id: variantfilterregions
inputs:
- doc: Input variant list.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output variant list.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Input target region in BED format. Default value: ''"
  id: reg
  inputBinding:
    prefix: -reg
  type: File
- doc: "Single target region in the format chr17:41194312-41279500. Default value:\
    \ ''"
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: "If set, instead of removing variants, they are marked with the given flag\
    \ in the 'filter' column. Default value: ''"
  id: mark
  inputBinding:
    prefix: -mark
  type: string
- doc: "Inverts the filter, i.e. variants inside the region are removed/marked. Default\
    \ value: 'false'"
  id: in_v
  inputBinding:
    prefix: -inv
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
