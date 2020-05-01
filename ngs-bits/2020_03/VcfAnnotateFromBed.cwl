#!/usr/bin/env cwl-runner

baseCommand:
- VcfAnnotateFromBed
class: CommandLineTool
cwlVersion: v1.0
id: vcfannotatefrombed
inputs:
- doc: BED file used for annotation.
  id: bed
  inputBinding:
    prefix: -bed
  type: File
- doc: Annotation name in output VCF file.
  id: name
  inputBinding:
    prefix: -name
  type: string
- doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
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
