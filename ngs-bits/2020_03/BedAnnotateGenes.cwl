#!/usr/bin/env cwl-runner

baseCommand:
- BedAnnotateGenes
class: CommandLineTool
cwlVersion: v1.0
id: bedannotategenes
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
- doc: "The number of bases to extend the gene regions before annotation. Default\
    \ value: '0'"
  id: extend
  inputBinding:
    prefix: -extend
  type: long
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
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
