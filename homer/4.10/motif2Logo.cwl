#!/usr/bin/env cwl-runner

baseCommand:
- motif2Logo.pl
class: CommandLineTool
cwlVersion: v1.0
id: motif2logo.pl
inputs:
- doc: '(create a pdf: "motif file".pdf: default creates a PNG image)'
  id: pdf
  inputBinding:
    prefix: -pdf
  type: boolean
- doc: '<#> (Number of sequences to feed seqlogo: default 100)'
  id: ns
  inputBinding:
    prefix: -ns
  type: boolean
- doc: '(scale logo by information content: default scales nucleotides to probability)'
  id: bit
  inputBinding:
    prefix: -bit
  type: boolean
- doc: '(prefix of output file, i.e. outputprefix.png : default, motif file)'
  id: o
  inputBinding:
    prefix: -o
  type: string
