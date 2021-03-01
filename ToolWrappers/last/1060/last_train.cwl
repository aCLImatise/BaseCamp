class: CommandLineTool
id: last_train.cwl
inputs:
- id: in_verbose
  doc: show more details of intermediate steps
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_rev_sym
  doc: force reverse-complement symmetry
  type: boolean?
  inputBinding:
    prefix: --revsym
- id: in_mat_sym
  doc: force symmetric substitution matrix
  type: boolean?
  inputBinding:
    prefix: --matsym
- id: in_gap_sym
  doc: force insertion/deletion symmetry
  type: boolean?
  inputBinding:
    prefix: --gapsym
- id: in_pid
  doc: 'skip alignments with > PID% identity (default: 100)'
  type: long?
  inputBinding:
    prefix: --pid
- id: in_post_mask
  doc: skip mostly-lowercase alignments (default=1)
  type: long?
  inputBinding:
    prefix: --postmask
- id: in_sample_number
  doc: 'number of random sequence samples (default: 500)'
  type: long?
  inputBinding:
    prefix: --sample-number
- id: in_sample_length
  doc: 'length of each sample (default: 2000)'
  type: long?
  inputBinding:
    prefix: --sample-length
- id: in_match_score_default
  doc: 'match score (default: 6 if Q>0, else 5)'
  type: long?
  inputBinding:
    prefix: -r
- id: in_mismatch_cost_default
  doc: 'mismatch cost (default: 18 if Q>0, else 5)'
  type: long?
  inputBinding:
    prefix: -q
- id: in_matchmismatch_score_matrix
  doc: match/mismatch score matrix
  type: string?
  inputBinding:
    prefix: -p
- id: in_gap_existence_cost
  doc: 'gap existence cost (default: 21 if Q>0, else 15)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_gap_extension_cost
  doc: 'gap extension cost (default: 9 if Q>0, else 3)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_insertion_existence_cost
  doc: insertion existence cost
  type: string?
  inputBinding:
    prefix: -A
- id: in_insertion_extension_cost
  doc: insertion extension cost
  type: string?
  inputBinding:
    prefix: -B
- id: in_query_letters_e
  doc: 'query letters per random alignment (default: 1e6)'
  type: long?
  inputBinding:
    prefix: -D
- id: in_maximum_expected_alignments
  doc: maximum expected alignments per square giga
  type: long?
  inputBinding:
    prefix: -E
- id: in_reverse_forward_default
  doc: "0=reverse, 1=forward, 2=both (default: 2 if DNA, else\n1)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_score_matrix_applies
  doc: "score matrix applies to forward strand of: 0=reference,\n1=query (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: -S
- id: in_omit_gapless_alignments
  doc: omit gapless alignments in COUNT others with > score-
  type: string?
  inputBinding:
    prefix: -C
- id: in_maximum_initial_matches
  doc: "maximum initial matches per query position (default:\n10)"
  type: long?
  inputBinding:
    prefix: -m
- id: in_use_initial_matches
  doc: "use initial matches starting at every STEP-th position\nin each query (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: -k
- id: in_number_parallel_threads
  doc: number of parallel threads
  type: long?
  inputBinding:
    prefix: -P
- id: in_nx_ambiguous_sequence
  doc: "N/X is ambiguous in: 0=neither sequence, 1=reference,\n2=query, 3=both (default=0)"
  type: long?
  inputBinding:
    prefix: -X
- id: in_input_format_fasta
  doc: "input format: 0=fasta or fastq-ignore, 1=fastq-sanger\n(default=fasta)\n"
  type: long?
  inputBinding:
    prefix: -Q
- id: in_per_length
  doc: '-T NUMBER          type of alignment: 0=local, 1=overlap (default: 0)'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- last-train
