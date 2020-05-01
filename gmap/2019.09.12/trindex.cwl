#!/usr/bin/env cwl-runner

baseCommand:
- trindex
class: CommandLineTool
cwlVersion: v1.0
id: trindex
inputs:
- doc: --sequence --dump -d <genome> -m <genes IIT file> > <fasta file>
  id: get_genome
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
