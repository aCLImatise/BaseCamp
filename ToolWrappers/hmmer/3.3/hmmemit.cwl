class: CommandLineTool
id: hmmemit.cwl
inputs:
- id: in_send_sequence_output
  doc: ': send sequence output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_number_seqs_sample
  doc: ': number of seqs to sample  [1]  (n>0)'
  type: long
  inputBinding:
    prefix: -N
- id: in__emit_alignment
  doc: ': emit alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_emit_simple_sequence
  doc: ': emit simple majority-rule consensus sequence'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_emit_minl_minu
  doc: ": emit fancier consensus sequence (req's --minl, --minu)"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_sample_sequences_profile
  doc: ': sample sequences from profile, not core model'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_set_expected_length
  doc: ': set expected length from profile to <n>  [400]'
  type: long
  inputBinding:
    prefix: -L
- id: in_local
  doc: ': configure profile in multihit local mode  [default]'
  type: boolean
  inputBinding:
    prefix: --local
- id: in_uni_local
  doc: ': configure profile in unilocal mode'
  type: boolean
  inputBinding:
    prefix: --unilocal
- id: in_g_local
  doc: ': configure profile in multihit glocal mode'
  type: boolean
  inputBinding:
    prefix: --glocal
- id: in_unig_local
  doc: ': configure profile in unihit glocal mode'
  type: boolean
  inputBinding:
    prefix: --uniglocal
- id: in_min_l
  doc: ": show consensus as 'any' (X/N) unless >= this fraction  [0.0]"
  type: double
  inputBinding:
    prefix: --minl
- id: in_minu
  doc: ': show consensus as upper case if >= this fraction  [0.0]'
  type: double
  inputBinding:
    prefix: --minu
- id: in_seed
  doc: ': set RNG seed to <n>  [0]  (n>=0)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_sequence_output
  doc: ': send sequence output to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_send_sequence_output)
cwlVersion: v1.1
baseCommand:
- hmmemit
