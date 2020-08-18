class: CommandLineTool
id: ../../../shuffle.cwl
inputs:
- id: shuffle_preserve_
  doc: ': shuffle but preserve both mono- and di-symbol composition'
  type: boolean
  inputBinding:
    prefix: -d
- id: generate_markov_properties
  doc: ': generate with same 0th order Markov properties as each input'
  type: boolean
  inputBinding:
    prefix: '-0'
- id: generate_same_st
  doc: ': generate with same 1st order Markov properties as each input'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: make_iid_sequences
  doc: ': make iid sequences of same number and length as inputs'
  type: boolean
  inputBinding:
    prefix: -l
- id: _reverse_inputs
  doc: ': reverse inputs'
  type: boolean
  inputBinding:
    prefix: -r
- id: regionally_shuffle_inputs
  doc: ': regionally shuffle inputs in window size <n>'
  type: string
  inputBinding:
    prefix: -w
- id: make_when_set
  doc: ': make [-n] iid seqs of length [-t] of type [--dna|--amino]; when -i is set,
    no <seqfile> argument is used'
  type: boolean
  inputBinding:
    prefix: -i
- id: alignment
  doc: ': <seqfile> is an alignment; shuffle the columns'
  type: boolean
  inputBinding:
    prefix: --alignment
- id: amino
  doc: ': synthesize protein sequences [default] (see -i, -l)'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': synthesize DNA sequences (see -i, -l))'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_format
  doc: ': specify sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: nodes_c
  doc: ': remove sequence description lines'
  type: boolean
  inputBinding:
    prefix: --nodesc
- id: q_rna
  doc: ': <seqfile> is a QRNA/FASTA pairwise alignment file; shuffle the pairwise
    alignments, preserving gap position'
  type: boolean
  inputBinding:
    prefix: --qrna
- id: seed
  doc: ': set random number seed to <s>'
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffle
