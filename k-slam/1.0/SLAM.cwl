#!/usr/bin/env cwl-runner

baseCommand:
- SLAM
class: CommandLineTool
cwlVersion: v1.0
id: slam
inputs:
- doc: SLAM database file which reads will be  aligned against
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: (=0)        alignment score cutoff
  id: min_alignment_score
  inputBinding:
    prefix: --min-alignment-score
  type: string
- doc: (=0.94999999999999996) screen alignments with scores <  this*top score
  id: score_fraction_threshold
  inputBinding:
    prefix: --score-fraction-threshold
  type: string
- doc: (=2)                match score
  id: match_score
  inputBinding:
    prefix: --match-score
  type: string
- doc: (=3)           mismatch penalty (positive)
  id: mismatch_penalty
  inputBinding:
    prefix: --mismatch-penalty
  type: string
- doc: (=5)                   gap opening penalty (positive)
  id: gap_open
  inputBinding:
    prefix: --gap-open
  type: string
- doc: (=2)                 gap extend penalty (positive)
  id: gap_extend
  inputBinding:
    prefix: --gap-extend
  type: string
- doc: (=4294967295)         Number of reads from R1/R2 File to  align
  id: num_reads
  inputBinding:
    prefix: --num-reads
  type: string
- doc: (=10000000)   Reduce RAM usage by only analysing  "arg" reads at once, this
    will increase execution time
  id: num_reads_at_once
  inputBinding:
    prefix: --num-reads-at-once
  type: string
- doc: write to this file instead of stdout
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: write SAM output to this file
  id: sam_file
  inputBinding:
    prefix: --sam-file
  type: string
- doc: (=10)            Number of alignments to report in SAM  file
  id: num_alignments
  inputBinding:
    prefix: --num-alignments
  type: string
- doc: only output primary alignment lines,  use XA field for secondary alignments
  id: sam_x_a
  inputBinding:
    prefix: --sam-xa
  type: boolean
- doc: only perform alignments, not  metagenomics
  id: just_align
  inputBinding:
    prefix: --just-align
  type: boolean
- doc: do not link alignments together
  id: no_pseudo_assembly
  inputBinding:
    prefix: --no-pseudo-assembly
  type: boolean
