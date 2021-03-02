class: CommandLineTool
id: pancake_ovl_hifi.cwl
inputs:
- id: in_out_fmt
  doc: 'STR    Select the output format. Valid choices: (m4, ipa, paf, sam). [m4]'
  type: boolean?
  inputBinding:
    prefix: --out-fmt
- id: in_freq_percentile
  doc: FLOAT  Filter frequent kmers. [0.0002]
  type: boolean?
  inputBinding:
    prefix: --freq-percentile
- id: in_min_qlen
  doc: INT    Ignore queries shorter than this. [50]
  type: boolean?
  inputBinding:
    prefix: --min-qlen
- id: in_min_tlen
  doc: INT    Ignore targets shorter than this. [50]
  type: boolean?
  inputBinding:
    prefix: --min-tlen
- id: in_max_seed_dist
  doc: INT    Maximum distance between two seeds to join into an anchor. [5000]
  type: boolean?
  inputBinding:
    prefix: --max-seed-dist
- id: in_min_num_seeds
  doc: INT    Minimum number of seeds in an anchor. [3]
  type: boolean?
  inputBinding:
    prefix: --min-num-seeds
- id: in_min_cov_bases
  doc: INT    Minimum number of bases covered by kmers in an anchor. [30]
  type: boolean?
  inputBinding:
    prefix: --min-cov-bases
- id: in_min_anchor_span
  doc: INT    Minimum chain span to retain it. [1000]
  type: boolean?
  inputBinding:
    prefix: --min-anchor-span
- id: in_chain_bw
  doc: INT    Diagonal bandwidth to merge seeds into chains. [100]
  type: boolean?
  inputBinding:
    prefix: --chain-bw
- id: in_aln_bw
  doc: FLOAT  Bandwidth for alignment, fraction of the query span. [0.01]
  type: boolean?
  inputBinding:
    prefix: --aln-bw
- id: in_aln_diff_rate
  doc: FLOAT  Expected maximum diff rate between sequences. [0.03]
  type: boolean?
  inputBinding:
    prefix: --aln-diff-rate
- id: in_min_idt
  doc: "FLOAT  Minimum percent alignment identity allowed to report the alignment.\
    \ This is an\noverall threshold which takes into account both indels and SNPs.\
    \ [98]"
  type: boolean?
  inputBinding:
    prefix: --min-idt
- id: in_no_snps
  doc: "Ignore SNPs when computing the identity for an overlap. This only works in\
    \ the\ntraceback mode."
  type: boolean?
  inputBinding:
    prefix: --no-snps
- id: in_no_indels
  doc: "Ignore indels when computing the identity for an overlap. This only works\
    \ in the\ntraceback mode."
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_min_map_len
  doc: INT    Output only alignments above this length. [1000]
  type: boolean?
  inputBinding:
    prefix: --min-map-len
- id: in_skip_sym
  doc: "If Aid < Bid, only compute overlap Aid->Bid and skip computing overlap for\n\
    Bid->Aid."
  type: boolean?
  inputBinding:
    prefix: --skip-sym
- id: in_allow_self_hits
  doc: "If both the query and the target DBs are the same and Aid == Bid then this\
    \ is a\nself-hit. This option enables the output of such overlaps."
  type: boolean?
  inputBinding:
    prefix: --allow-self-hits
- id: in_one_hit_per_target
  doc: Allow only one alignment per query/target pair.
  type: boolean?
  inputBinding:
    prefix: --one-hit-per-target
- id: in_write_rev
  doc: For eveery overlap, write out its reverse complement too.
  type: boolean?
  inputBinding:
    prefix: --write-rev
- id: in_write_ids
  doc: Output overlaps will contain numeric IDs for the A and B reads (instead of
    names).
  type: boolean?
  inputBinding:
    prefix: --write-ids
- id: in_write_cigar
  doc: Write the CIGAR string if the sensitive alignment mode is applied.
  type: boolean?
  inputBinding:
    prefix: --write-cigar
- id: in_dt_dist
  doc: "INT    Allowed distance of an overlap from the beginning of the sequences\
    \ to call the\noverlap a dovetail. [0]"
  type: boolean?
  inputBinding:
    prefix: --dt-dist
- id: in_ext_dist
  doc: "INT    Heuristically modify the coordinats of an overlap into a dovetail overlap\
    \ if are\nwithin this distance from the edges of the reads. [0]"
  type: boolean?
  inputBinding:
    prefix: --ext-dist
- id: in_combine
  doc: INT    Combines this many query blocks into one larger block for processing.
    [1]
  type: boolean?
  inputBinding:
    prefix: --combine
- id: in_best_n
  doc: INT    Output only best N alignments. [0]
  type: boolean?
  inputBinding:
    prefix: --bestn
- id: in_use_hpc
  doc: Enable homopolymer compression.
  type: boolean?
  inputBinding:
    prefix: --use-hpc
- id: in_traceback
  doc: Run alignment traceback and compute mismatches.
  type: boolean?
  inputBinding:
    prefix: --traceback
- id: in_mask_hp
  doc: Mask homopolymer errors when traceback is generated. This will impact identity
  type: boolean?
  inputBinding:
    prefix: --mask-hp
- id: in_mask_hp_snps
  doc: "Mask mismatches which occur in the homopolymer sequences. Applied only when\n\
    traceback is generated. This will impact identity calculation."
  type: boolean?
  inputBinding:
    prefix: --mask-hp-snps
- id: in_mask_hp_arbitrary
  doc: "Allows arbitrary bases to be inserted into the HP stretches (the bases don't\
    \ have\nto match the HP). Only used in combination with '--mask-hp'."
  type: boolean?
  inputBinding:
    prefix: --mask-hp-arbitrary
- id: in_mark_secondary
  doc: Mask homopolymer errors when traceback is generated. This will impact identity
  type: boolean?
  inputBinding:
    prefix: --mark-secondary
- id: in_secondary_min_score_frac
  doc: FLOAT  Minimum secondary-to-primary score ratio. [0.8]
  type: boolean?
  inputBinding:
    prefix: --secondary-min-score-frac
- id: in_trim
  doc: "Applies window-based trimming of the front and end of the alignment. Can be\
    \ used\nonly in combination with '--traceback'."
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_trim_window_size
  doc: INT    Window size for trimming. [30]
  type: boolean?
  inputBinding:
    prefix: --trim-window-size
- id: in_trim_match_frac
  doc: FLOAT  Minimum fraction in a trimming window of match bases to stop trimming.
    [0.75]
  type: boolean?
  inputBinding:
    prefix: --trim-match-frac
- id: in_trim_to_first_match
  doc: "When trimming is applied, this option ensures that the first non-trimmed base\
    \ will\nbe a match operation. Can be used only in combination with '--trim'."
  type: boolean?
  inputBinding:
    prefix: --trim-to-first-match
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_target_prefix
  doc: STR    Prefix of the target SeqDB and SeedDB files. It should match.
  type: string
  inputBinding:
    position: 0
- id: in_query_prefix
  doc: STR    Prefix of the query SeqDB and SeedDB files. It should match.
  type: string
  inputBinding:
    position: 1
- id: in_target_block
  doc: INT    Block ID from the target DB. Queries will be mapped only onto this block.
  type: string
  inputBinding:
    position: 2
- id: in_query_block_start
  doc: INT    Start block ID for a range of blocks to map. Zero based.
  type: string
  inputBinding:
    position: 3
- id: in_query_block_end
  doc: "INT    Start block ID for a range of blocks to map. Zero based, non-inclusive.\
    \ Value == 0\nruns until the end block."
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- pancake
- ovl-hifi
