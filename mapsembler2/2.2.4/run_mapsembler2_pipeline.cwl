#!/usr/bin/env cwl-runner

baseCommand:
- run_mapsembler2_pipeline.sh
class: CommandLineTool
cwlVersion: v1.0
id: run_mapsembler2_pipeline.sh
inputs:
- doc: ': file containing starters (fasta)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: "of reads separated by space, surrounded by the '\"' character. Note that reads\
    \ may be in fasta or fastq format, gzipped or not. Example: -r \"data_sample/reads_sequence1.fasta\
    \   data_sample/reads_sequence2.fasta.gz\"."
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ': kind of assembly: 1=unitig (fasta), 2=contig (fasta), 3=unitig (graph),
    4=contig(graph)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'All out files will start with this prefix. Example: -p my_prefix'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Set the length of used kmers. Must fit the compiled value. Default=31. Example
    -k 31
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: Set the minimal coverage. Default=5. Example -c 5
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'Set the number of authorized substitutions used while mapping reads on found
    SNPs. Default=1. Example: -d 1'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'Estimated genome size. Used only to control memory usage. e.g. 3 billion (3000000000)
    uses 4Gb of RAM. Default=10 million. Example: -d 10000000'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: 'Set the process of search in the graph (1=Breadth  and 2=Depth). Default=1.
    Example: -f 1'
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: 'Set the maximal nodes length . Default=40. Example: -x 40'
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: 'Set the maximal graph depth . Default=10000. Example: -y 10000'
  id: y
  inputBinding:
    prefix: -y
  type: string
- doc: this message and exist
  id: h
  inputBinding:
    prefix: -h
  type: string
