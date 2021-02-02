class: CommandLineTool
id: bwa_bwasw.cwl
inputs:
- id: in_score_for_match
  doc: score for a match [1]
  type: long
  inputBinding:
    prefix: -a
- id: in_mismatch_penalty
  doc: mismatch penalty [3]
  type: long
  inputBinding:
    prefix: -b
- id: in_gap_open_penalty
  doc: gap open penalty [5]
  type: long
  inputBinding:
    prefix: -q
- id: in_gap_extension_penalty
  doc: gap extension penalty [2]
  type: long
  inputBinding:
    prefix: -r
- id: in_band_width
  doc: band width [50]
  type: long
  inputBinding:
    prefix: -w
- id: in_mask_level
  doc: mask level [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_file_output_results
  doc: file to output results to instead of stdout
  type: File
  inputBinding:
    prefix: -f
- id: in_sam_output_use
  doc: in SAM output, use hard clipping instead of soft clipping
  type: boolean
  inputBinding:
    prefix: -H
- id: in_copy_fastaq_comment
  doc: copy FASTA/Q comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: in_mark_multipart_alignments
  doc: mark multi-part alignments as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: in_skip_smithwaterman_read
  doc: skip Smith-Waterman read pairing
  type: boolean
  inputBinding:
    prefix: -S
- id: in_ignore_pairs_insert
  doc: ignore pairs with insert >=INT for inferring the size distr [20000]
  type: long
  inputBinding:
    prefix: -I
- id: in_score_threshold_divided
  doc: score threshold divided by a [30]
  type: long
  inputBinding:
    prefix: -T
- id: in_coefficient_lengththreshold_adjustment
  doc: coefficient of length-threshold adjustment [5.5]
  type: double
  inputBinding:
    prefix: -c
- id: in_zbest
  doc: Z-best [1]
  type: long
  inputBinding:
    prefix: -z
- id: in_maximum_seeding_interval
  doc: maximum seeding interval size [3]
  type: long
  inputBinding:
    prefix: -s
- id: in_seeds_trigger_int
  doc: '# seeds to trigger rev aln; 2*INT is also the chaining threshold [5]'
  type: long
  inputBinding:
    prefix: -N
- id: in_maximum_gap_size
  doc: maximum gap size during chaining [10000]
  type: long
  inputBinding:
    prefix: -G
- id: in_target_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_results
  doc: file to output results to instead of stdout
  type: File
  outputBinding:
    glob: $(inputs.in_file_output_results)
cwlVersion: v1.1
baseCommand:
- bwa
- bwasw
