#!/usr/bin/env cwl-runner

baseCommand:
- BedToFasta
class: CommandLineTool
cwlVersion: v1.0
id: bedtofasta
inputs:
- doc: Input BED file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output FASTA file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
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
