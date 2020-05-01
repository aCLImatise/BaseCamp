#!/usr/bin/env cwl-runner

baseCommand:
- ra_consensus
class: CommandLineTool
cwlVersion: v1.0
id: ra_consensus
inputs:
- doc: (required) input afg reads file
  id: reads
  inputBinding:
    prefix: --reads
  type: File
- doc: (required) input afg contigs file
  id: contigs
  inputBinding:
    prefix: --contigs
  type: File
- doc: 'default: approx. number of processors/cores number of threads used'
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: 'default: cout output fasta transcripts file'
  id: out
  inputBinding:
    prefix: --out
  type: File
