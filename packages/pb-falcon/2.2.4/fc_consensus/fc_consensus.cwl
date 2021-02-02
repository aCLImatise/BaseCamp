class: CommandLineTool
id: fc_consensus.cwl
inputs:
- id: in_n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 24)'
  type: long
  inputBinding:
    prefix: --n-core
- id: in_min_cov
  doc: 'minimum coverage to break the consensus (default: 6)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_min_cov_aln
  doc: 'minimum coverage of alignment data; a seed read with less than MIN_COV_ALN
    average depth of coverage will be completely ignored (default: 10)'
  type: long
  inputBinding:
    prefix: --min-cov-aln
- id: in_max_cov_aln
  doc: 'maximum coverage of alignment data; a seed read with more than MAX_COV_ALN
    average depth of coverage of the longest alignments will be capped, excess shorter
    alignments will be ignored (default: 0)'
  type: long
  inputBinding:
    prefix: --max-cov-aln
- id: in_min_len_aln
  doc: 'minimum length of a sequence in an alignment to be used in consensus; any
    shorter sequence will be completely ignored (default: 0)'
  type: long
  inputBinding:
    prefix: --min-len-aln
- id: in_min_n_read
  doc: '1 + minimum number of reads used in generating the consensus; a seed read
    with fewer alignments will be completely ignored (default: 10)'
  type: long
  inputBinding:
    prefix: --min-n-read
- id: in_max_n_read
  doc: '1 + maximum number of reads used in generating the consensus (default: 500)'
  type: long
  inputBinding:
    prefix: --max-n-read
- id: in_trim
  doc: 'trim the input sequence with k-mer spare dynamic programming to find the mapped
    range (default: False)'
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_output_full
  doc: 'output uncorrected regions too (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-full
- id: in_output_multi
  doc: 'output multi correct regions (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-multi
- id: in_min_idt
  doc: 'minimum identity of the alignments used for correction (default: 0.7)'
  type: long
  inputBinding:
    prefix: --min-idt
- id: in_edge_tolerance
  doc: 'for trimming, the there is unaligned edge leng > edge_tolerance, ignore the
    read (default: 1000)'
  type: long
  inputBinding:
    prefix: --edge-tolerance
- id: in_trim_size
  doc: 'the size for triming both ends from initial sparse aligned region (default:
    50)'
  type: long
  inputBinding:
    prefix: --trim-size
- id: in_allow_external_mapping
  doc: 'if provided, externally determined mapping coordinates will be used for error
    correction (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow-external-mapping
- id: in_verbose_level
  doc: "logging level (WARNING=3, INFO=2, DEBUG=1) (default: 2.0)\n"
  type: double
  inputBinding:
    prefix: --verbose-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_consensus
