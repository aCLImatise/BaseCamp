#!/usr/bin/env cwl-runner

baseCommand:
- scaffold2contig.pl
class: CommandLineTool
cwlVersion: v1.0
id: scaffold2contig.pl
inputs:
- doc: ''
  id: scaffold_seq_file
  inputBinding:
    position: 0
  type: string
