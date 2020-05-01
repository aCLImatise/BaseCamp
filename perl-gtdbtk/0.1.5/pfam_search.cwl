#!/usr/bin/env cwl-runner

baseCommand:
- pfam_search.pl
class: CommandLineTool
cwlVersion: v1.0
id: pfam_search.pl
inputs:
- doc: ''
  id: pfam_scan_pl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: string
- doc: ''
  id: dir
  inputBinding:
    prefix: -dir
  type: Directory
