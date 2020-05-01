#!/usr/bin/env cwl-runner

baseCommand:
- BedAnnotateGC
class: CommandLineTool
cwlVersion: v1.0
id: bedannotategc
inputs:
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
- doc: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
- doc: "Bases to extend around the input region for calculating the GC content. Default\
    \ value: '0'"
  id: extend
  inputBinding:
    prefix: -extend
  type: long
- doc: "Clear all annotations present in the input file. Default value: 'false'"
  id: clear
  inputBinding:
    prefix: -clear
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
