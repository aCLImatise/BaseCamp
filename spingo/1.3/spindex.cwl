#!/usr/bin/env cwl-runner

baseCommand:
- spindex
class: CommandLineTool
cwlVersion: v1.0
id: spindex
inputs:
- doc: '[ --version ]             display version information'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --kmersize ] arg (=8)   K-mer size'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --database ] arg        path to the fasta format reference sequence  database'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --processors ] arg (=1) number of processor threads'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
