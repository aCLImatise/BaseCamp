#!/usr/bin/env cwl-runner

baseCommand:
- VcfCheck
class: CommandLineTool
cwlVersion: v1.0
id: vcfcheck
inputs:
- doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Number of lines to check in the VCF file (unlimited if 0) Default value: '1000'"
  id: lines
  inputBinding:
    prefix: -lines
  type: long
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
- doc: "Add general information about the input file to the output. Default value:\
    \ 'false'"
  id: info
  inputBinding:
    prefix: -info
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
