class: CommandLineTool
id: fc_consensus.cwl
inputs:
- id: n_core
  doc: 'number of processes used for generating consensus; 0 for main process only
    (default: 24)'
  type: string
  inputBinding:
    prefix: --n-core
- id: min_cov
  doc: 'minimum coverage to break the consensus (default: 6)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: min_cov_aln
  doc: 'minimum coverage of alignment data; a seed read with less than MIN_COV_ALN
    average depth of coverage will be completely ignored (default: 10)'
  type: long
  inputBinding:
    prefix: --min-cov-aln
- id: max_cov_aln
  doc: 'maximum coverage of alignment data; a seed read with more than MAX_COV_ALN
    average depth of coverage of the longest alignments will be capped, excess shorter
    alignments will be ignored (default: 0)'
  type: long
  inputBinding:
    prefix: --max-cov-aln
- id: min_len_aln
  doc: 'minimum length of a sequence in an alignment to be used in consensus; any
    shorter sequence will be completely ignored (default: 0)'
  type: long
  inputBinding:
    prefix: --min-len-aln
- id: min_n_read
  doc: '1 + minimum number of reads used in generating the consensus; a seed read
    with fewer alignments will be completely ignored (default: 10)'
  type: long
  inputBinding:
    prefix: --min-n-read
- id: max_n_read
  doc: '1 + maximum number of reads used in generating the consensus (default: 500)'
  type: long
  inputBinding:
    prefix: --max-n-read
- id: trim
  doc: 'trim the input sequence with k-mer spare dynamic programming to find the mapped
    range (default: False)'
  type: boolean
  inputBinding:
    prefix: --trim
- id: output_full
  doc: 'output uncorrected regions too (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-full
- id: output_multi
  doc: 'output multi correct regions (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-multi
- id: min_idt
  doc: 'minimum identity of the alignments used for correction (default: 0.7)'
  type: long
  inputBinding:
    prefix: --min-idt
- id: edge_tolerance
  doc: 'for trimming, the there is unaligned edge leng > edge_tolerance, ignore the
    read (default: 1000)'
  type: string
  inputBinding:
    prefix: --edge-tolerance
- id: trim_size
  doc: 'the size for triming both ends from initial sparse aligned region (default:
    50)'
  type: string
  inputBinding:
    prefix: --trim-size
- id: allow_external_mapping
  doc: 'if provided, externally determined mapping coordinates will be used for error
    correction (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow-external-mapping
- id: verbose_level
  doc: 'logging level (WARNING=3, INFO=2, DEBUG=1) (default: 2.0)'
  type: string
  inputBinding:
    prefix: --verbose-level
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_consensus
