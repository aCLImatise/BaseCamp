#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_domain_extractor.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_domain_extractor.pl
inputs:
- doc: ''
  id: fast_a_domain_extractor_pl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ''
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: string
