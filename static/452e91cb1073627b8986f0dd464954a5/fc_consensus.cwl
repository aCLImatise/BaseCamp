class: CommandLineTool
id: fc_consensus.cwl
inputs:
- id: in_n_core
  doc: "number of processes used for generating consensus; 0\nfor main process only\
    \ (default=24)"
  type: long?
  inputBinding:
    prefix: --n_core
- id: in_local_match_count_window
  doc: local match window size (obsoleted, no effect)
  type: long?
  inputBinding:
    prefix: --local_match_count_window
- id: in_local_match_count_threshold
  doc: local match count threshold (obsoleted, no effect)
  type: string?
  inputBinding:
    prefix: --local_match_count_threshold
- id: in_min_cov
  doc: minimum coverage to break the consensus
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_cov_aln
  doc: "minimum coverage of alignment data; an alignment with\nfewer reads will be\
    \ completely ignored"
  type: string?
  inputBinding:
    prefix: --min_cov_aln
- id: in_min_len_aln
  doc: "minimum length of a sequence in an alignment to be\nused in consensus; any\
    \ shorter sequence will be\ncompletely ignored"
  type: long?
  inputBinding:
    prefix: --min_len_aln
- id: in_max_n_read
  doc: "maximum number of reads used in generating the\nconsensus"
  type: long?
  inputBinding:
    prefix: --max_n_read
- id: in_trim
  doc: "trim the input sequence with k-mer spare dynamic\nprogramming to find the\
    \ mapped range"
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_output_full
  doc: output uncorrected regions too
  type: boolean?
  inputBinding:
    prefix: --output_full
- id: in_output_multi
  doc: output multi correct regions; implies
  type: boolean?
  inputBinding:
    prefix: --output_multi
- id: in_output_simple_fast_a_header
  doc: "Turn off --output_dformat. This was for older (pre\nspring 2015) DALIGNER.\
    \ Never needed now."
  type: boolean?
  inputBinding:
    prefix: --output_simple_fasta_header
- id: in_min_idt
  doc: minimum identity of the alignments used for correction
  type: string?
  inputBinding:
    prefix: --min_idt
- id: in_edge_tolerance
  doc: "for trimming, the there is unaligned edge leng >\nedge_tolerance, ignore the\
    \ read"
  type: string?
  inputBinding:
    prefix: --edge_tolerance
- id: in_trim_size
  doc: "the size for triming both ends from initial sparse\naligned region\n"
  type: long?
  inputBinding:
    prefix: --trim_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_consensus
