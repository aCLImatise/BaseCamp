class: CommandLineTool
id: SLAM.cwl
inputs:
- id: in_db
  doc: "SLAM database file which reads will be\naligned against"
  type: File?
  inputBinding:
    prefix: --db
- id: in_min_alignment_score
  doc: (=0)        alignment score cutoff
  type: long?
  inputBinding:
    prefix: --min-alignment-score
- id: in_score_fraction_threshold
  doc: "(=0.94999999999999996)\nscreen alignments with scores <\nthis*top score"
  type: double?
  inputBinding:
    prefix: --score-fraction-threshold
- id: in_match_score
  doc: (=2)                match score
  type: long?
  inputBinding:
    prefix: --match-score
- id: in_mismatch_penalty
  doc: (=3)           mismatch penalty (positive)
  type: long?
  inputBinding:
    prefix: --mismatch-penalty
- id: in_gap_open
  doc: (=5)                   gap opening penalty (positive)
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend
  doc: (=2)                 gap extend penalty (positive)
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_num_reads
  doc: (=4294967295)         Number of reads from R1/R2 File to
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_output_file
  doc: write to this file instead of stdout
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_sam_file
  doc: write SAM output to this file
  type: File?
  inputBinding:
    prefix: --sam-file
- id: in_num_alignments
  doc: (=10)            Number of alignments to report in SAM
  type: long?
  inputBinding:
    prefix: --num-alignments
- id: in_just_align
  doc: only perform alignments, not
  type: boolean?
  inputBinding:
    prefix: --just-align
- id: in_align
  doc: '--num-reads-at-once arg (=10000000)   Reduce RAM usage by only analysing '
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: '--sam-xa                              only output primary alignment lines, '
  type: File
  inputBinding:
    position: 0
- id: in_meta_genomics
  doc: --no-pseudo-assembly                  do not link alignments together
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: write to this file instead of stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_sam_file
  doc: write SAM output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_file)
hints: []
cwlVersion: v1.1
baseCommand:
- SLAM
