#!/usr/bin/env cwl-runner

baseCommand:
- GenesToBed
class: CommandLineTool
cwlVersion: v1.0
id: genestobed
inputs:
- doc: "Transcript source database. Valid: 'ccds,ensembl'"
  id: source
  inputBinding:
    prefix: -source
  type: string
- doc: "Mode: gene = start/end of all transcripts, exon = start/end of all exons of\
    \ all transcripts. Valid: 'gene,exon'"
  id: mode
  inputBinding:
    prefix: -mode
  type: string
- doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\
    \ Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Allow fallback to all source databases, if no transcript for a gene is defined\
    \ in the selected source database. Default value: 'false'"
  id: fall_back
  inputBinding:
    prefix: -fallback
  type: boolean
- doc: "Annotate transcript identifier in addition to gene name. Default value: 'false'"
  id: an_no
  inputBinding:
    prefix: -anno
  type: boolean
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
