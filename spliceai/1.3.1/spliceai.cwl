#!/usr/bin/env cwl-runner

baseCommand:
- spliceai
class: CommandLineTool
cwlVersion: v1.0
id: spliceai
inputs:
- doc: '[input]     path to the input VCF file, defaults to standard in'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[output]    path to the output VCF file, defaults to standard out'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: path to the reference genome fasta file
  id: r
  inputBinding:
    prefix: -R
  type: string
- doc: '"grch37" (GENCODE V24lift37 canonical annotation file in package), "grch38"
    (GENCODE V24 canonical annotation file in package), or path to a similar custom
    gene annotation file'
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: '[distance]  maximum distance between the variant and gained/lost splice site,
    defaults to 50'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[mask]      mask scores representing annotated acceptor/donor gain and unannotated
    acceptor/donor loss, defaults to 0'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
