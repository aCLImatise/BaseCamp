class: CommandLineTool
id: shuffle.cwl
inputs:
- id: in_make_samples_default
  doc: ': make <n> samples per input seq (default 1)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_save_shuffled_sequences
  doc: ': save shuffled sequences to file <f>'
  type: File?
  inputBinding:
    prefix: -o
- id: in_truncatedelete_inputs_fixed
  doc: ': truncate/delete inputs to fixed length <n>'
  type: long?
  inputBinding:
    prefix: -t
- id: in_shuffle_preserve_mono
  doc: ': shuffle but preserve both mono- and di-symbol composition'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_generate_same_th
  doc: ': generate with same 0th order Markov properties as each input'
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_generate_same_st
  doc: ': generate with same 1st order Markov properties as each input'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_make_iid_sequences
  doc: ': make iid sequences of same number and length as inputs'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in__reverse_inputs
  doc: ': reverse inputs'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_regionally_shuffle_inputs
  doc: ': regionally shuffle inputs in window size <n>'
  type: long?
  inputBinding:
    prefix: -w
- id: in_make_when_set
  doc: ": make [-n] iid seqs of length [-t] of type [--dna|--amino];\nwhen -i is set,\
    \ no <seqfile> argument is used"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_alignment
  doc: ': <seqfile> is an alignment; shuffle the columns'
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_amino
  doc: ': synthesize protein sequences [default] (see -i, -l)'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': synthesize DNA sequences (see -i, -l))'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_in_format
  doc: ': specify sequence file format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_nodes_c
  doc: ': remove sequence description lines'
  type: boolean?
  inputBinding:
    prefix: --nodesc
- id: in_q_rna
  doc: ": <seqfile> is a QRNA/FASTA pairwise alignment file;\nshuffle the pairwise\
    \ alignments, preserving gap position"
  type: boolean?
  inputBinding:
    prefix: --qrna
- id: in_seed
  doc: ': set random number seed to <s>'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- shuffle
