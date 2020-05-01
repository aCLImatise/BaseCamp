#!/usr/bin/env cwl-runner

baseCommand:
- BedGeneOverlap
class: CommandLineTool
cwlVersion: v1.0
id: bedgeneoverlap
inputs:
- doc: "Transcript source database. Valid: 'ccds,ensembl'"
  id: source
  inputBinding:
    prefix: -source
  type: string
- doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
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
