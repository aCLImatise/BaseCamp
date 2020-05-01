#!/usr/bin/env cwl-runner

baseCommand:
- rnaclustCleanAln.pl
class: CommandLineTool
cwlVersion: v1.0
id: rnaclustcleanaln.pl
inputs:
- doc: ''
  id: rna_clust_gen_report_pl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: dir
  inputBinding:
    position: 1
  type: string
