#!/usr/bin/env cwl-runner

baseCommand:
- alignTranscripts1.0
class: CommandLineTool
cwlVersion: v1.0
id: aligntranscripts1.0
inputs:
- doc: bed file A
  id: bed_a
  inputBinding:
    position: 0
  type: string
- doc: fasta file A
  id: genome_fasta_a
  inputBinding:
    position: 1
  type: string
- doc: bed file B
  id: be_db
  inputBinding:
    position: 2
  type: string
- doc: fasta file B
  id: genome_fast_ab
  inputBinding:
    position: 3
  type: string
- doc: out prefix
  id: out_prefix
  inputBinding:
    position: 4
  type: string
