class: CommandLineTool
id: SLAM.cwl
inputs:
- id: db
  doc: SLAM database file which reads will be  aligned against
  type: string
  inputBinding:
    prefix: --db
- id: min_alignment_score
  doc: (=0)        alignment score cutoff
  type: string
  inputBinding:
    prefix: --min-alignment-score
- id: score_fraction_threshold
  doc: (=0.94999999999999996) screen alignments with scores <  this*top score
  type: string
  inputBinding:
    prefix: --score-fraction-threshold
- id: match_score
  doc: (=2)                match score
  type: string
  inputBinding:
    prefix: --match-score
- id: mismatch_penalty
  doc: (=3)           mismatch penalty (positive)
  type: string
  inputBinding:
    prefix: --mismatch-penalty
- id: gap_open
  doc: (=5)                   gap opening penalty (positive)
  type: string
  inputBinding:
    prefix: --gap-open
- id: gap_extend
  doc: (=2)                 gap extend penalty (positive)
  type: string
  inputBinding:
    prefix: --gap-extend
- id: num_reads
  doc: (=4294967295)         Number of reads from R1/R2 File to  align
  type: string
  inputBinding:
    prefix: --num-reads
- id: num_reads_at_once
  doc: (=10000000)   Reduce RAM usage by only analysing  "arg" reads at once, this
    will increase execution time
  type: string
  inputBinding:
    prefix: --num-reads-at-once
- id: output_file
  doc: write to this file instead of stdout
  type: string
  inputBinding:
    prefix: --output-file
- id: sam_file
  doc: write SAM output to this file
  type: string
  inputBinding:
    prefix: --sam-file
- id: num_alignments
  doc: (=10)            Number of alignments to report in SAM  file
  type: string
  inputBinding:
    prefix: --num-alignments
- id: sam_x_a
  doc: only output primary alignment lines,  use XA field for secondary alignments
  type: boolean
  inputBinding:
    prefix: --sam-xa
- id: just_align
  doc: only perform alignments, not  metagenomics
  type: boolean
  inputBinding:
    prefix: --just-align
- id: no_pseudo_assembly
  doc: do not link alignments together
  type: boolean
  inputBinding:
    prefix: --no-pseudo-assembly
outputs: []
cwlVersion: v1.1
baseCommand:
- SLAM
