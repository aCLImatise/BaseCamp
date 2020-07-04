class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/daligner_p.cwl
inputs:
- id: kmer_size_must
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: look_kmers_averlapping
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: ignore_kmers_occur
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean
  inputBinding:
    prefix: -t
- id: use_only_gb
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean
  inputBinding:
    prefix: -M
- id: look_alignments_e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: look_alignments_l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: trace_point_spacing
  doc: ': The trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: hgap_option_align
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean
  inputBinding:
    prefix: -H
- id: use_t_threads
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: block_level_sorts
  doc: ': Do block level sorts and merges in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
- id: soft_mask_blocks
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean
  inputBinding:
    prefix: -m
- id: atgc_biased_compensate
  doc: ': For AT/GC biased data, compensate k-mer counts (deprecated).'
  type: boolean
  inputBinding:
    prefix: -b
- id: verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: sort_areadaposition_pairs
  doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  type: boolean
  inputBinding:
    prefix: -a
- id: compare_subjet_target
  doc: ': Compare subjet to target, but not vice versa.'
  type: boolean
  inputBinding:
    prefix: -A
- id: compare_reads_themselves
  doc: ': Compare reads to themselves'
  type: boolean
  inputBinding:
    prefix: -I
- id: va_bai
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vabAI
- id: d_aligner
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- daligner_p
