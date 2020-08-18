class: CommandLineTool
id: ../../../sentieon_bwa_bwasw.cwl
inputs:
- id: score_for_match
  doc: score for a match [1]
  type: long
  inputBinding:
    prefix: -a
- id: mismatch_penalty
  doc: mismatch penalty [3]
  type: long
  inputBinding:
    prefix: -b
- id: gap_open_penalty
  doc: gap open penalty [5]
  type: long
  inputBinding:
    prefix: -q
- id: gap_extension_penalty
  doc: gap extension penalty [2]
  type: long
  inputBinding:
    prefix: -r
- id: band_width
  doc: band width [50]
  type: long
  inputBinding:
    prefix: -w
- id: mask_level
  doc: mask level [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: file_output_results
  doc: file to output results to instead of stdout
  type: File
  inputBinding:
    prefix: -f
- id: sam_output_use
  doc: in SAM output, use hard clipping instead of soft clipping
  type: boolean
  inputBinding:
    prefix: -H
- id: copy_fastaq_comment
  doc: copy FASTA/Q comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: mark_multipart_alignments
  doc: mark multi-part alignments as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: skip_smithwaterman_read
  doc: skip Smith-Waterman read pairing
  type: boolean
  inputBinding:
    prefix: -S
- id: ignore_pairs_insert
  doc: ignore pairs with insert >=INT for inferring the size distr [20000]
  type: long
  inputBinding:
    prefix: -I
- id: score_threshold_divided
  doc: score threshold divided by a [30]
  type: long
  inputBinding:
    prefix: -T
- id: coefficient_lengththreshold_adjustment
  doc: coefficient of length-threshold adjustment [5.5]
  type: double
  inputBinding:
    prefix: -c
- id: zbest
  doc: Z-best [1]
  type: long
  inputBinding:
    prefix: -z
- id: maximum_seeding_interval
  doc: maximum seeding interval size [3]
  type: long
  inputBinding:
    prefix: -s
- id: seeds_trigger_int
  doc: '# seeds to trigger rev aln; 2*INT is also the chaining threshold [5]'
  type: long
  inputBinding:
    prefix: -N
- id: maximum_gap_size
  doc: maximum gap size during chaining [10000]
  type: long
  inputBinding:
    prefix: -G
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_was_w
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: query_two_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- bwasw
