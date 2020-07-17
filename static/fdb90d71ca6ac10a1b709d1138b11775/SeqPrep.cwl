class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SeqPrep.cwl
inputs:
- id: help_message_works
  doc: 'this help message and exit (also works with no args) '
  type: string
  inputBinding:
    prefix: -h
- id: sequence_phred_rather
  doc: 'sequence is in phred+64 rather than phred+33 format, the output will still
    be phred+33 '
  type: string
  inputBinding:
    prefix: '-6'
- id: quality_score_cutoff
  doc: <Quality score cutoff for mismatches to be counted in overlap; default = 13>
  type: boolean
  inputBinding:
    prefix: -q
- id: minimum_length_print
  doc: <Minimum length of a trimmed or merged read to print it; default = 30>
  type: boolean
  inputBinding:
    prefix: -L
- id: forward_read_sequence
  doc: <forward read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter1) = AGATCGGAAGAGCACACGTC>
  type: boolean
  inputBinding:
    prefix: -A
- id: reverse_read_sequence
  doc: <reverse read primer/adapter sequence to trim as it would appear at the end
    of a read (recommend about 20bp of this) (should validate by grepping a file);
    default (genomic non-multiplexed adapter2) = AGATCGGAAGAGCGTCGTGT>
  type: boolean
  inputBinding:
    prefix: -B
- id: minimum_overall_base_pair_overlap_trim
  doc: <minimum overall base pair overlap with adapter sequence to trim; default =
    10>
  type: boolean
  inputBinding:
    prefix: -O
- id: for_primeradapter_default
  doc: <maximum fraction of good quality mismatching bases for primer/adapter overlap;
    default = 0.020000>
  type: boolean
  inputBinding:
    prefix: -M
- id: minimum_fraction_matching_bases_primeradapter
  doc: <minimum fraction of matching bases for primer/adapter overlap; default = 0.870000>
  type: boolean
  inputBinding:
    prefix: -N
- id: adapter_alignment_bandwidth
  doc: <adapter alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -b
- id: adapter_alignment_gapopen
  doc: <adapter alignment gap-open; default = 8>
  type: boolean
  inputBinding:
    prefix: -Q
- id: adapter_alignment_gapextension
  doc: <adapter alignment gap-extension; default = 2>
  type: boolean
  inputBinding:
    prefix: -t
- id: adapter_alignment_default
  doc: <adapter alignment gap-end; default = 2>
  type: boolean
  inputBinding:
    prefix: -e
- id: adapter_alignment_minimum
  doc: <adapter alignment minimum local alignment score cutoff [roughly (2*num_hits)
    - (num_gaps*gap_open) - (num_gaps*gap_close) - (gap_len*gap_extend) - (2*num_mismatches)];
    default = 26>
  type: boolean
  inputBinding:
    prefix: -Z
- id: read_alignment_bandwidth_default
  doc: <read alignment band-width; default = 50>
  type: boolean
  inputBinding:
    prefix: -w
- id: read_alignment_gapopen_default
  doc: <read alignment gap-open; default = 26>
  type: boolean
  inputBinding:
    prefix: -W
- id: read_gapextension_default
  doc: <read alignment gap-extension; default = 9>
  type: boolean
  inputBinding:
    prefix: -p
- id: read_alignment_gapend_default
  doc: <read alignment gap-end; default = 5>
  type: boolean
  inputBinding:
    prefix: -P
- id: read_alignment_maximum_default
  doc: <read alignment maximum fraction gap cutoff; default = 0.125000>
  type: boolean
  inputBinding:
    prefix: -X
- id: use_mask_n
  doc: <use mask; N will replace adapters>
  type: boolean
  inputBinding:
    prefix: -z
- id: max_number_provided
  doc: <max number of pretty alignments to write (if -E provided); default = 10000>
  type: boolean
  inputBinding:
    prefix: -x
- id: minimum_overall_base_pair_overlap_merge
  doc: <minimum overall base pair overlap to merge two reads; default = 15>
  type: boolean
  inputBinding:
    prefix: -o
- id: maximum_fraction_to
  doc: <maximum fraction of good quality mismatching bases to overlap reads; default
    = 0.020000>
  type: boolean
  inputBinding:
    prefix: -m
- id: minimum_fraction_matching_bases_overlap
  doc: <minimum fraction of matching bases to overlap reads; default = 0.900000>
  type: boolean
  inputBinding:
    prefix: -n
- id: required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- SeqPrep
