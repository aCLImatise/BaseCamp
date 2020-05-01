#!/usr/bin/env cwl-runner

baseCommand:
- spingo
class: CommandLineTool
cwlVersion: v1.0
id: spingo
inputs:
- doc: '[ --version ]             get version information'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --kmersize ] arg (=8)   K-mer size'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --bootstrap ] arg (=10) number of bootstrap samples'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --subsample ] arg       fraction of kmers to be subsampled for  bootstrapping.
    Default is kmersize'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --processors ] arg (=1) number of processor threads'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --database ] arg        path to the fasta format reference database'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --input ] arg           path to the fasta format input file'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --write-index ]         if specified, index will be written to disk'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --ambiguous ]           if specified, species which lead to an ambiguous
    hit will be listed'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
