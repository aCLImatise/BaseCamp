#!/usr/bin/env cwl-runner

baseCommand:
- recycle.py
class: CommandLineTool
cwlVersion: v1.0
id: recycle.py
inputs:
- doc: '(spades 3.50+) assembly graph FASTG file to process; recommended for spades
    3.5: before_rr.fastg, for spades 3.6+:assembly_graph.fastg'
  id: graph
  inputBinding:
    prefix: --graph
  type: string
- doc: integer reflecting maximum k value used by the assembler
  id: max_k
  inputBinding:
    prefix: --max_k
  type: long
- doc: BAM file resulting from aligning reads to contigs file, filtering for best
    matches
  id: bam
  inputBinding:
    prefix: --bam
  type: string
- doc: 'minimum length required for reporting [default: 1000]'
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: 'coefficient of variation used for pre-selection [default: 0.5, higher--> less
    restrictive]'
  id: max_cv
  inputBinding:
    prefix: --max_CV
  type: long
- doc: True or False value reflecting whether data sequenced was an isolated strain
  id: iso
  inputBinding:
    prefix: --iso
  type: string
- doc: Output directory
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
