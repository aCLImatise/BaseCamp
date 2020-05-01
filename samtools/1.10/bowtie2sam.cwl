#!/usr/bin/env cwl-runner

baseCommand:
- bowtie2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: bowtie2sam.pl
inputs:
- doc: ''
  id: aln_bowtie
  inputBinding:
    position: 0
  type: string
