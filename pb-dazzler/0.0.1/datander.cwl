class: CommandLineTool
id: ../../../datander.cwl
inputs:
- id: verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
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
- id: use_s_trace
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: use_t_threads
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: first_level_sort
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- datander
