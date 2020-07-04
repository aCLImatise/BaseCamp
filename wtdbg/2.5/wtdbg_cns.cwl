class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wtdbg_cns.cwl
inputs:
- id: number_of_threads
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: input_files_utgcns
  doc: Input file(s) *.utg.cns from wtdbg, +, [STDIN]
  type: string
  inputBinding:
    prefix: -i
- id: output_files
  doc: Output files, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: expected_length_say
  doc: Expected length of node, or say the overlap length of two adject units in layout
    file, [1000] bp
  type: long
  inputBinding:
    prefix: -j
- id: kmer_size_long
  doc: Kmer size for long reads, [15]
  type: long
  inputBinding:
    prefix: -k
- id: zcutoff_drop_score
  doc: Z-cutoff, drop the lower  (score / <-X>), [4]
  type: long
  inputBinding:
    prefix: -Z
- id: wcutoff_drop_position
  doc: W-cutoff, drop the lagger (position), [48] In DAG correction, -W set the bandwidth
    of alignment
  type: long
  inputBinding:
    prefix: -W
- id: high_coverage_bonus
  doc: High coverage bonus, [1]
  type: long
  inputBinding:
    prefix: -H
- id: high_coverage_cutoff
  doc: High coverage cutoff = avg_cov / <-L> [10]
  type: long
  inputBinding:
    prefix: -L
- id: candidate_strategy_bestkmers
  doc: 'Candidate strategy, 0: best-kmers, 1: median length, 2: first (include), 3:
    first (exclude), 4: longest, 5, shortest, [0] In DAG correction, force to use
    strategy 2'
  type: long
  inputBinding:
    prefix: -c
- id: match_score
  doc: Match score, [2]
  type: long
  inputBinding:
    prefix: -M
- id: mismatch_score
  doc: Mismatch score, [-7]
  type: long
  inputBinding:
    prefix: -X
- id: insertion_score
  doc: Insertion score, [-3]
  type: long
  inputBinding:
    prefix: -I
- id: deletion_score
  doc: Deletion score, [-4]
  type: long
  inputBinding:
    prefix: -D
- id: gap_extension_score
  doc: Gap extension score, [-2]
  type: long
  inputBinding:
    prefix: -E
- id: dbg_correction_correction
  doc: '1: DBG correction; 2: DAG correction, [1]'
  type: long
  inputBinding:
    prefix: -m
- id: correct_structure_error
  doc: whether to correct structure before error correction, [1]
  type: long
  inputBinding:
    prefix: -S
- id: verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: print_version_information
  doc: Print version information and then exit
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- wtdbg-cns
