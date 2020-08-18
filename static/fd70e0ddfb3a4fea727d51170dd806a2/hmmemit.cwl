class: CommandLineTool
id: ../../../hmmemit.cwl
inputs:
- id: send_sequence_output
  doc: ': send sequence output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: number_seqs_sample
  doc: ': number of seqs to sample  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -N
- id: _emit_alignment
  doc: ': emit alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: emit_simple_sequence
  doc: ': emit simple majority-rule consensus sequence'
  type: boolean
  inputBinding:
    prefix: -c
- id: emit_fancier_reqs
  doc: ": emit fancier consensus sequence (req's --minl, --minu)"
  type: boolean
  inputBinding:
    prefix: -C
- id: sample_sequences_model
  doc: ': sample sequences from profile, not core model'
  type: boolean
  inputBinding:
    prefix: -p
- id: set_expected_length
  doc: ': set expected length from profile to <n>  [400]'
  type: string
  inputBinding:
    prefix: -L
- id: local
  doc: ': configure profile in multihit local mode  [default]'
  type: boolean
  inputBinding:
    prefix: --local
- id: uni_local
  doc: ': configure profile in unilocal mode'
  type: boolean
  inputBinding:
    prefix: --unilocal
- id: g_local
  doc: ': configure profile in multihit glocal mode'
  type: boolean
  inputBinding:
    prefix: --glocal
- id: unig_local
  doc: ': configure profile in unihit glocal mode'
  type: boolean
  inputBinding:
    prefix: --uniglocal
- id: min_l
  doc: ": show consensus as 'any' (X/N) unless >= this fraction  [0.0]"
  type: string
  inputBinding:
    prefix: --minl
- id: minu
  doc: ': show consensus as upper case if >= this fraction  [0.0]'
  type: string
  inputBinding:
    prefix: --minu
- id: seed
  doc: ': set RNG seed to <n>  [0]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmemit
