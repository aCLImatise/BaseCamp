#!/usr/bin/env cwl-runner

baseCommand:
- aln-seqs.pl
class: CommandLineTool
cwlVersion: v1.0
id: aln-seqs.pl
inputs:
- doc: ''
  id: aln_seqs
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: files
  inputBinding:
    position: 1
  type: File
- doc: names with prefix '#'
  id: no_hash
  inputBinding:
    prefix: -no-hash
  type: string
