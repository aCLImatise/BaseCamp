#!/usr/bin/env cwl-runner

baseCommand:
- spankijunc
class: CommandLineTool
cwlVersion: v1.0
id: spankijunc
inputs:
- doc: BAM file name
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Reference GTF
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: "What method to run: 'eval'  - Evaluates alignments, does not calculate IRT\
    \ 'quant' - Quantifies coverage and IRT, but not entropy and MMES 'all'   - Performs\
    \ all analyses (default)"
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Fasta file Must have same chromosomes as BAM and GTF
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Filter junctions (T/F) T - Do not report unannotated junctions with ambiguous
    gene assignment or high exon-intron similarity F - Report all junctions (default)
  id: filter
  inputBinding:
    prefix: -filter
  type: string
- doc: Output directory, default='junctions_out'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Size to examine for repeats (number of bases)
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: Overhang applied to junction filtering and intron retention analysis (number
    of bases)
  id: o_hang
  inputBinding:
    prefix: -ohang
  type: string
