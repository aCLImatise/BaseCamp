class: CommandLineTool
id: cmemit.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: ': send sequence output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ': generate <n> sequences  [10]'
  type: string
  inputBinding:
    prefix: -N
- id: u
  doc: ': write generated sequences as unaligned FASTA [default]  [default]'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: ': write generated sequences as an alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: ': generate a single "consensus" sequence only'
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: ': embed emitted sequences within larger random sequences of length <n>'
  type: string
  inputBinding:
    prefix: -e
- id: l
  doc: ': local; emit from a locally configured model [default: global]'
  type: boolean
  inputBinding:
    prefix: -l
- id: u5p
  doc: ": truncate unaligned sequences 5', choosing a random start posn"
  type: boolean
  inputBinding:
    prefix: --u5p
- id: u3p
  doc: ": truncate unaligned sequences 3', choosing a random end   posn"
  type: boolean
  inputBinding:
    prefix: --u3p
- id: a5p
  doc: ": truncate aln 5', start at match column <n> (use 0 for random posn)"
  type: string
  inputBinding:
    prefix: --a5p
- id: a3p
  doc: ": truncate aln 3', end   at match column <n> (use 0 for random posn)"
  type: string
  inputBinding:
    prefix: --a3p
- id: seed
  doc: ': set RNG seed to <n> [default: one-time arbitrary seed]  [0]'
  type: string
  inputBinding:
    prefix: --seed
- id: iid
  doc: ': with -e, generate larger sequences as 25% ACGU (iid) '
  type: boolean
  inputBinding:
    prefix: --iid
- id: rna
  doc: ': output as RNA sequence data  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': output as DNA sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: idx
  doc: ': start sequence numbering at <n>  [1]'
  type: string
  inputBinding:
    prefix: --idx
- id: out_format
  doc: ': w/-a output alignment in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
- id: t_file
  doc: ': dump parsetrees to file <f>'
  type: string
  inputBinding:
    prefix: --tfile
- id: exp
  doc: ': exponentiate CM probabilities by <x> before emitting'
  type: string
  inputBinding:
    prefix: --exp
- id: hmm_only
  doc: ': emit from filter HMM, not from CM'
  type: boolean
  inputBinding:
    prefix: --hmmonly
- id: no_hmm_only
  doc: ': always emit from CM, even for models with 0 basepairs'
  type: boolean
  inputBinding:
    prefix: --nohmmonly
outputs: []
cwlVersion: v1.1
baseCommand:
- cmemit
