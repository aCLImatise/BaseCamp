#!/usr/bin/env cwl-runner

baseCommand:
- vcfremap
class: CommandLineTool
cwlVersion: v1.0
id: vcfremap
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: align using this many bases flanking each side of the reference allele
  id: ref_window_size
  inputBinding:
    prefix: --ref-window-size
  type: string
- doc: align using this many flanking bases from the reference around each alternate
    allele
  id: alt_window_size
  inputBinding:
    prefix: --alt-window-size
  type: string
- doc: FASTA reference file, required with -i and -u
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: match score for SW algorithm
  id: match_score
  inputBinding:
    prefix: --match-score
  type: string
- doc: mismatch score for SW algorithm
  id: mismatch_score
  inputBinding:
    prefix: --mismatch-score
  type: string
- doc: gap open penalty for SW algorithm
  id: gap_open_penalty
  inputBinding:
    prefix: --gap-open-penalty
  type: string
- doc: gap extension penalty for SW algorithm
  id: gap_extend_penalty
  inputBinding:
    prefix: --gap-extend-penalty
  type: string
- doc: use entropy scaling for the gap open penalty
  id: entropy_gap_open
  inputBinding:
    prefix: --entropy-gap-open
  type: boolean
- doc: penalize non-repeat-unit gaps in repeat sequence
  id: repeat_gap_extend
  inputBinding:
    prefix: --repeat-gap-extend
  type: string
- doc: supply a new cigar as TAG in the output VCF
  id: adjust_vcf
  inputBinding:
    prefix: --adjust-vcf
  type: string
