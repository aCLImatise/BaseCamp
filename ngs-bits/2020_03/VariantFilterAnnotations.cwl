#!/usr/bin/env cwl-runner

baseCommand:
- VariantFilterAnnotations
class: CommandLineTool
cwlVersion: v1.0
id: variantfilterannotations
inputs:
- doc: Input variant list in GSvar format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output variant list in GSvar format.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Filter definition file.
  id: filters
  inputBinding:
    prefix: -filters
  type: File
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
