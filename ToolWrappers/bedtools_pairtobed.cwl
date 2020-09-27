class: CommandLineTool
id: bedtools_pairtobed.cwl
inputs:
- id: in_a_bam
  doc: "The A input file is in BAM format.  Output will be BAM as well. Replaces -a.\n\
    - Requires BAM to be grouped or sorted by query."
  type: boolean
  inputBinding:
    prefix: -abam
- id: in_ub_am
  doc: "Write uncompressed BAM output. Default writes compressed BAM.\nis to write\
    \ output in BAM when using -abam."
  type: boolean
  inputBinding:
    prefix: -ubam
- id: in_bed_pe
  doc: "When using BAM input (-abam), write output as BEDPE. The default\nis to write\
    \ output in BAM when using -abam."
  type: boolean
  inputBinding:
    prefix: -bedpe
- id: in_ed
  doc: "Use BAM total edit distance (NM tag) for BEDPE score.\n- Default for BEDPE\
    \ is to use the minimum of\nof the two mapping qualities for the pair.\n- When\
    \ -ed is used the total edit distance\nfrom the two mates is reported as the score."
  type: boolean
  inputBinding:
    prefix: -ed
- id: in_minimum_overlap_required
  doc: "Minimum overlap required as fraction of A (e.g. 0.05).\nDefault is 1E-9 (effectively\
    \ 1bp)."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_require_same_strandedness
  doc: "Require same strandedness when finding overlaps.\nDefault is to ignore stand.\n\
    Not applicable with -type inspan or -type outspan."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness when finding overlaps.\nDefault is to ignore\
    \ stand.\nNot applicable with -type inspan or -type outspan."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_type
  doc: Approach to reporting overlaps between BEDPE and BED.
  type: boolean
  inputBinding:
    prefix: -type
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_either
  doc: "Report overlaps if either end of A overlaps B.\n- Default."
  type: string
  inputBinding:
    position: 0
- id: in_both
  doc: Report overlaps if both ends of A overlap  B.
  type: string
  inputBinding:
    position: 0
- id: in_xor
  doc: Report overlaps if one and only one end of A overlaps B.
  type: string
  inputBinding:
    position: 1
- id: in_is_pan
  doc: "Report overlaps between [end1, start2] of A and B.\n- Note: If chrom1 <> chrom2,\
    \ entry is ignored."
  type: string
  inputBinding:
    position: 0
- id: in_o_span
  doc: "Report overlaps between [start1, end2] of A and B.\n- Note: If chrom1 <> chrom2,\
    \ entry is ignored."
  type: string
  inputBinding:
    position: 1
- id: in_not_i_span
  doc: "Report A if ispan of A doesn't overlap B.\n- Note: If chrom1 <> chrom2, entry\
    \ is ignored."
  type: string
  inputBinding:
    position: 2
- id: in_no_to_span
  doc: "Report A if ospan of A doesn't overlap B.\n- Note: If chrom1 <> chrom2, entry\
    \ is ignored."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- pairtobed
