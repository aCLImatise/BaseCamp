class: CommandLineTool
id: ../../../bwa_mem.cwl
inputs:
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: minimum_seed_length
  doc: minimum seed length [19]
  type: long
  inputBinding:
    prefix: -k
- id: band_width_banded
  doc: band width for banded alignment [100]
  type: long
  inputBinding:
    prefix: -w
- id: offdiagonal_xdropoff
  doc: off-diagonal X-dropoff [100]
  type: long
  inputBinding:
    prefix: -d
- id: look_longer_float
  doc: look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]
  type: double
  inputBinding:
    prefix: -r
- id: seed_occurrence_rd
  doc: seed occurrence for the 3rd round seeding [20]
  type: long
  inputBinding:
    prefix: -y
- id: skip_seeds_more
  doc: skip seeds with more than INT occurrences [500]
  type: long
  inputBinding:
    prefix: -c
- id: drop_chains_shorter
  doc: drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]
  type: double
  inputBinding:
    prefix: -D
- id: discard_chain_shorter
  doc: discard a chain if seeded bases shorter than INT [0]
  type: long
  inputBinding:
    prefix: -W
- id: perform_most_rounds
  doc: perform at most INT rounds of mate rescues for each read [50]
  type: long
  inputBinding:
    prefix: -m
- id: skip_mate_rescue
  doc: skip mate rescue
  type: boolean
  inputBinding:
    prefix: -S
- id: skip_pairing_mate
  doc: skip pairing; mate rescue performed unless -S also in use
  type: boolean
  inputBinding:
    prefix: -P
- id: score_sequence_match
  doc: score for a sequence match, which scales options -TdBOELU unless overridden
    [1]
  type: long
  inputBinding:
    prefix: -A
- id: penalty_for_mismatch
  doc: penalty for a mismatch [4]
  type: long
  inputBinding:
    prefix: -B
- id: gap_open_penalties
  doc: gap open penalties for deletions and insertions [6,6]
  type:
  - long
  inputBinding:
    prefix: -O
- id: gap_extension_penalty
  doc: gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]
  type:
  - long
  inputBinding:
    prefix: -E
- id: penalty_end_clipping
  doc: penalty for 5'- and 3'-end clipping [5,5]
  type:
  - long
  inputBinding:
    prefix: -L
- id: penalty_unpaired_read
  doc: penalty for an unpaired read pair [17]
  type: long
  inputBinding:
    prefix: -U
- id: read_type_changes
  doc: 'read type. Setting -x changes multiple parameters unless overridden [null]
    pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref) ont2d: -k14
    -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref) intractg: -B9
    -O16 -L5  (intra-species contigs to ref)'
  type: string
  inputBinding:
    prefix: -x
- id: smart_pairing_ignoring
  doc: smart pairing (ignoring in2.fq)
  type: boolean
  inputBinding:
    prefix: -p
- id: read_group_line
  doc: read group header line such as '@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -R
- id: insert_str_header
  doc: insert STR to header if it starts with @; or insert lines in FILE [null]
  type: string
  inputBinding:
    prefix: -H
- id: sam_file_output
  doc: sam file to output results to [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: treat_alt_contigs
  doc: treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt
    file)
  type: boolean
  inputBinding:
    prefix: -j
- id: split_alignment_take
  doc: for split alignment, take the alignment with the smallest coordinate as primary
  type: boolean
  inputBinding:
    prefix: '-5'
- id: modify_mapq_supplementary
  doc: don't modify mapQ of supplementary alignments
  type: boolean
  inputBinding:
    prefix: -q
- id: process_int_input
  doc: process INT input bases in each batch regardless of nThreads (for reproducibility)
    []
  type: long
  inputBinding:
    prefix: -K
- id: verbosity_level_error
  doc: 'verbosity level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
- id: minimum_score_output
  doc: minimum score to output [30]
  type: long
  inputBinding:
    prefix: -T
- id: there_int_hits
  doc: if there are <INT hits with score >80% of the max score, output all in XA [5,200]
  type:
  - long
  inputBinding:
    prefix: -h
- id: output_alignments_unpaired
  doc: output all alignments for SE or unpaired PE
  type: boolean
  inputBinding:
    prefix: -a
- id: append_fastafastq_comment
  doc: append FASTA/FASTQ comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: output_reference_header
  doc: output the reference FASTA header in the XR tag
  type: boolean
  inputBinding:
    prefix: -V
- id: use_soft_clipping
  doc: use soft clipping for supplementary alignments
  type: boolean
  inputBinding:
    prefix: -Y
- id: mark_shorter_split
  doc: mark shorter split hits as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: specify_mean_deviation
  doc: specify the mean, standard deviation (10% of the mean if absent), max (4 sigma
    from the mean if absent) and min of the insert size distribution. FR orientation
    only. [inferred]
  type:
  - double
  - long
  inputBinding:
    prefix: -I
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- mem
