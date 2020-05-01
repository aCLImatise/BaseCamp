#!/usr/bin/env cwl-runner

baseCommand:
- VcfToTsv
class: CommandLineTool
cwlVersion: v1.0
id: vcftotsv
inputs:
- doc: Input variant list in VCF format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output variant list in TSV format.
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
