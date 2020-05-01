#!/usr/bin/env cwl-runner

baseCommand:
- fixPolishesIID
class: CommandLineTool
cwlVersion: v1.0
id: fixpolishesiid
inputs:
- doc: Read cDNA deflines from c.fasta
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Read genomic deflines from g.fasta
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Write output as GFF3
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
