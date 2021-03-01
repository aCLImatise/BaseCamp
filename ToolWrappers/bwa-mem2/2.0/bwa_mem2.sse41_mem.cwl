class: CommandLineTool
id: bwa_mem2.sse41_mem.cwl
inputs:
- id: in_output_sam_file
  doc: Output SAM file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_minimum_seed_length
  doc: minimum seed length [19]
  type: long?
  inputBinding:
    prefix: -k
- id: in_band_width_banded
  doc: band width for banded alignment [100]
  type: long?
  inputBinding:
    prefix: -w
- id: in_offdiagonal_xdropoff
  doc: off-diagonal X-dropoff [100]
  type: long?
  inputBinding:
    prefix: -d
- id: in_look_internal_float
  doc: look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]
  type: double?
  inputBinding:
    prefix: -r
- id: in_seed_occurrence_round
  doc: seed occurrence for the 3rd round seeding [20]
  type: long?
  inputBinding:
    prefix: -y
- id: in_skip_seeds_more
  doc: skip seeds with more than INT occurrences [500]
  type: long?
  inputBinding:
    prefix: -c
- id: in_drop_chains_shorter
  doc: drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]
  type: double?
  inputBinding:
    prefix: -D
- id: in_discard_chain_seeded
  doc: discard a chain if seeded bases shorter than INT [0]
  type: long?
  inputBinding:
    prefix: -W
- id: in_perform_most_int
  doc: perform at most INT rounds of mate rescues for each read [50]
  type: long?
  inputBinding:
    prefix: -m
- id: in_skip_mate_rescue
  doc: skip mate rescue
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_skip_pairing_rescue
  doc: skip pairing; mate rescue performed unless -S also in use
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_score_sequence_tdboelu
  doc: score for a sequence match, which scales options -TdBOELU unless overridden
    [1]
  type: long?
  inputBinding:
    prefix: -A
- id: in_penalty_for_mismatch
  doc: penalty for a mismatch [4]
  type: long?
  inputBinding:
    prefix: -B
- id: in_gap_open_penalties
  doc: gap open penalties for deletions and insertions [6,6]
  type: long?
  inputBinding:
    prefix: -O
- id: in_gap_extension_penalty
  doc: gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]
  type: long?
  inputBinding:
    prefix: -E
- id: in_penalty_end_clipping
  doc: penalty for 5'- and 3'-end clipping [5,5]
  type: long?
  inputBinding:
    prefix: -L
- id: in_penalty_unpaired_read
  doc: penalty for an unpaired read pair [17]
  type: long?
  inputBinding:
    prefix: -U
- id: in_smart_pairing_ignoring
  doc: smart pairing (ignoring in2.fq)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_read_group_line
  doc: read group header line such as '@RG\tID:foo\tSM:bar' [null]
  type: string?
  inputBinding:
    prefix: -R
- id: in_file_insert_str
  doc: /FILE   insert STR to header if it starts with @; or insert lines in FILE [null]
  type: File?
  inputBinding:
    prefix: -H
- id: in_treat_alt_contigs
  doc: treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt
    file)
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_split_alignment_take
  doc: for split alignment, take the alignment with the smallest coordinate as primary
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_modify_mapq_supplementary
  doc: don't modify mapQ of supplementary alignments
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_process_int_input
  doc: process INT input bases in each batch regardless of nThreads (for reproducibility)
    []
  type: long?
  inputBinding:
    prefix: -K
- id: in_verbose_level_error
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_minimum_score_output
  doc: minimum score to output [30]
  type: long?
  inputBinding:
    prefix: -T
- id: in_there_int_hits
  doc: if there are <INT hits with score >80% of the max score, output all in XA [5,200]
  type: long?
  inputBinding:
    prefix: -h
- id: in_output_alignments_pe
  doc: output all alignments for SE or unpaired PE
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_append_fastafastq_comment
  doc: append FASTA/FASTQ comment to SAM output
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_output_reference_header
  doc: output the reference FASTA header in the XR tag
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_use_soft_clipping
  doc: use soft clipping for supplementary alignments
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_mark_shorter_hits
  doc: mark shorter split hits as secondary
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_specify_mean_deviation
  doc: "specify the mean, standard deviation (10% of the mean if absent), max\n(4\
    \ sigma from the mean if absent) and min of the insert size distribution.\nFR\
    \ orientation only. [inferred]"
  type: double?
  inputBinding:
    prefix: -I
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_two_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sam_file
  doc: Output SAM file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sam_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bwa-mem2.sse41
- mem
