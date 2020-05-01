#!/usr/bin/env cwl-runner

baseCommand:
- kaiju-convertMAR.py
class: CommandLineTool
cwlVersion: v1.0
id: kaiju-convertmar.py
inputs:
- doc: 'MarRef TSV file path (default: MarRef.tsv)'
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: 'MarDB TSV file path (default: MarDB.tsv)'
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: 'NCBI nodes.dmp file path (default: nodes.dmp)'
  id: nodes
  inputBinding:
    prefix: --nodes
  type: string
- doc: 'genomes download directory (default: genomes)'
  id: genomes
  inputBinding:
    prefix: --genomes
  type: string
