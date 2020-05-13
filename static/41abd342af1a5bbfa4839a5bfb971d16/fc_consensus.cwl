class: CommandLineTool
id: fc_consensus.cwl
inputs:
- id: n_core
  doc: number of processes used for generating consensus; 0 for main process only
    (default=24)
  type: string
  inputBinding:
    prefix: --n_core
- id: local_match_count_window
  doc: local match window size (obsoleted, no effect)
  type: string
  inputBinding:
    prefix: --local_match_count_window
- id: local_match_count_threshold
  doc: local match count threshold (obsoleted, no effect)
  type: string
  inputBinding:
    prefix: --local_match_count_threshold
- id: min_cov
  doc: minimum coverage to break the consensus
  type: long
  inputBinding:
    prefix: --min_cov
- id: min_cov_aln
  doc: minimum coverage of alignment data; an alignment with fewer reads will be completely
    ignored
  type: long
  inputBinding:
    prefix: --min_cov_aln
- id: min_len_aln
  doc: minimum length of a sequence in an alignment to be used in consensus; any shorter
    sequence will be completely ignored
  type: long
  inputBinding:
    prefix: --min_len_aln
- id: max_n_read
  doc: maximum number of reads used in generating the consensus
  type: long
  inputBinding:
    prefix: --max_n_read
- id: trim
  doc: trim the input sequence with k-mer spare dynamic programming to find the mapped
    range
  type: boolean
  inputBinding:
    prefix: --trim
- id: output_full
  doc: output uncorrected regions too
  type: boolean
  inputBinding:
    prefix: --output_full
- id: output_multi
  doc: output multi correct regions; implies --output_dformat, unless --output-simple-fasta-header
  type: boolean
  inputBinding:
    prefix: --output_multi
- id: output_d_format
  doc: output daligner compatible header, only work with --output_multi; DEPRECATED
    and ignored, as this is the default now
  type: boolean
  inputBinding:
    prefix: --output_dformat
- id: output_simple_fast_a_header
  doc: Turn off --output_dformat. This was for older (pre spring 2015) DALIGNER. Never
    needed now.
  type: boolean
  inputBinding:
    prefix: --output_simple_fasta_header
- id: min_idt
  doc: minimum identity of the alignments used for correction
  type: long
  inputBinding:
    prefix: --min_idt
- id: edge_tolerance
  doc: for trimming, the there is unaligned edge leng > edge_tolerance, ignore the
    read
  type: string
  inputBinding:
    prefix: --edge_tolerance
- id: trim_size
  doc: the size for triming both ends from initial sparse aligned region
  type: string
  inputBinding:
    prefix: --trim_size
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_consensus
