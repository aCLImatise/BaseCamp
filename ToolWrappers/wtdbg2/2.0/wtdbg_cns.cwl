class: CommandLineTool
id: wtdbg_cns.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_input_files_wtdbg
  doc: Input file(s) *.utg.cns from wtdbg, +, [STDIN]
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_files
  doc: Output files, [STDOUT]
  type: string?
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_expected_length_say
  doc: Expected length of node, or say the overlap length of two adject units in layout
    file, [1000] bp
  type: long?
  inputBinding:
    prefix: -j
- id: in_kmer_size_long
  doc: Kmer size for long reads, [15]
  type: long?
  inputBinding:
    prefix: -k
- id: in_zcutoff_drop_score
  doc: Z-cutoff, drop the lower  (score / <-X>), [4]
  type: long?
  inputBinding:
    prefix: -Z
- id: in_drop_lagger_position
  doc: "W-cutoff, drop the lagger (position), [48]\nIn DAG correction, -W set the\
    \ bandwidth of alignment"
  type: long?
  inputBinding:
    prefix: -W
- id: in_high_coverage_bonus
  doc: High coverage bonus, [1]
  type: long?
  inputBinding:
    prefix: -H
- id: in_high_coverage_cutoff
  doc: High coverage cutoff = avg_cov / <-L> [10]
  type: long?
  inputBinding:
    prefix: -L
- id: in_candidate_strategy_bestkmers
  doc: "Candidate strategy, 0: best-kmers, 1: median length, 2: first (include), 3:\
    \ first (exclude), 4: longest, 5, shortest, [0]\nIn DAG correction, force to use\
    \ strategy 2"
  type: long?
  inputBinding:
    prefix: -c
- id: in_match_score
  doc: Match score, [2]
  type: long?
  inputBinding:
    prefix: -M
- id: in_mismatch_score
  doc: Mismatch score, [-7]
  type: long?
  inputBinding:
    prefix: -X
- id: in_insertion_score
  doc: Insertion score, [-3]
  type: long?
  inputBinding:
    prefix: -I
- id: in_deletion_score
  doc: Deletion score, [-4]
  type: long?
  inputBinding:
    prefix: -D
- id: in_gap_extension_score
  doc: Gap extension score, [-2]
  type: long?
  inputBinding:
    prefix: -E
- id: in_dbg_correction_correction
  doc: '1: DBG correction; 2: DAG correction, [1]'
  type: long?
  inputBinding:
    prefix: -m
- id: in_correct_structure_error
  doc: whether to correct structure before error correction, [1]
  type: long?
  inputBinding:
    prefix: -S
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wtdbg-cns
