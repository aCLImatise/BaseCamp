#!/usr/bin/env cwl-runner

baseCommand:
- VariantQC
class: CommandLineTool
cwlVersion: v1.0
id: variantqc
inputs:
- doc: Input variant list in VCF format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Ignore filter entries, i.e. consider variants that did not pass filters. Default\
    \ value: 'false'"
  id: ignore_filter
  inputBinding:
    prefix: -ignore_filter
  type: boolean
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
