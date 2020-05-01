#!/usr/bin/env cwl-runner

baseCommand:
- make_hexamer_tab.py
class: CommandLineTool
cwlVersion: v1.0
id: make_hexamer_tab.py
inputs:
- doc: Coding sequence (must be CDS without UTR, i.e. from start coden to stop coden)
    in fasta format
  id: cod
  inputBinding:
    prefix: --cod
  type: string
- doc: Noncoding sequences in fasta format
  id: non_cod
  inputBinding:
    prefix: --noncod
  type: string
