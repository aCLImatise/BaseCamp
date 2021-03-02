class: CommandLineTool
id: daligner.cwl
inputs:
- id: in_kmer_size_be
  doc: ': k-mer size (must be <= 32).'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_look_kmers_averlapping
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_ignore_kmers_occur
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_use_only_gb
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_look_percent_similarity
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_look_alignments_length
  doc: ': Look for alignments of length >= -l.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_trace_point_spacing
  doc: ': The trace point spacing for encoding alignments.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_hgap_option_align
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_use_t_threads
  doc: ': Use -T threads.'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_block_level_sorts
  doc: ': Do block level sorts and merges in directory -P.'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_soft_mask_blocks
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_atgc_biased_data
  doc: ': For AT/GC biased data, compensate k-mer counts (deprecated).'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_sort_areadaposition_pairs
  doc: ": sort .las by A-read,A-position pairs for map usecase\noff => sort .las by\
    \ A,B-read pairs for overlap piles"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_compare_subjet_target
  doc: ': Compare subjet to target, but not vice versa.'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_compare_reads_themselves
  doc: ': Compare reads to themselves'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_va_bai
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vabAI
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- daligner
