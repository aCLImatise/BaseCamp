#!/usr/bin/env cwl-runner

baseCommand:
- pizzly
class: CommandLineTool
cwlVersion: v1.0
id: pizzly
inputs:
- doc: k-mer size used in kallisto
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: 'Maximum number of mismatches allowed (default: 2)'
  id: align_score
  inputBinding:
    prefix: --align-score
  type: string
- doc: 'Maximum fragment size of library (default: 400)'
  id: insert_size
  inputBinding:
    prefix: --insert-size
  type: string
- doc: Prefix for output files
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Annotation in GTF format
  id: gtf
  inputBinding:
    prefix: --gtf
  type: string
- doc: File for caching annotation (created if not present, otherwise reused from
    previous runs)
  id: cache
  inputBinding:
    prefix: --cache
  type: string
- doc: Fasta reference
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Ignore any protein coding information in annotation
  id: ignore_protein
  inputBinding:
    prefix: --ignore-protein
  type: boolean
