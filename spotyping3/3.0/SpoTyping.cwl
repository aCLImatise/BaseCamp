#!/usr/bin/env cwl-runner

baseCommand:
- SpoTyping.py
class: CommandLineTool
cwlVersion: v1.0
id: spotyping.py
inputs:
- doc: Set this if input is a fasta file that contains only a complete genomic sequence
    or assembled contigs from an isolate [Default is off]
  id: seq
  inputBinding:
    prefix: --seq
  type: boolean
- doc: 'swift mode, either "on" or "off" [Defulat: on]'
  id: swift
  inputBinding:
    prefix: --swift
  type: string
- doc: 'minimum number of error-free hits to support presence of a spacer [Default:
    0.1*average read depth]'
  id: min
  inputBinding:
    prefix: --min
  type: long
- doc: 'minimum number of 1-error-tolerant hits to support presence of a spacer [Default:
    0.12 * average read depth]'
  id: rm_in
  inputBinding:
    prefix: --rmin
  type: long
- doc: 'output directory [Default: running directory]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'basename of output files generated [Default: SpoTyping]'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: suppress the SITVIT database query [Default is off]
  id: no_query
  inputBinding:
    prefix: --noQuery
  type: boolean
- doc: stringent filtering of reads (used only for low quality reads)[Default is off]
  id: filter
  inputBinding:
    prefix: --filter
  type: boolean
- doc: set this only when the reads are sorted to a reference genome [Default is off]
  id: sorted
  inputBinding:
    prefix: --sorted
  type: boolean
- doc: enable debug mode, keeping all intermediate files for checking [Default is
    off]
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
