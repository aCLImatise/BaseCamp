class: CommandLineTool
id: KmerInShort.cwl
inputs:
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: file
  doc: '(1 arg) :    input file '
  type: boolean
  inputBinding:
    prefix: -file
- id: km_er_size
  doc: '(1 arg) :    ksize'
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: out
  doc: "(1 arg) :    output file  [default '']"
  type: boolean
  inputBinding:
    prefix: -out
- id: offset
  doc: "(1 arg) :    starting offset  [default '0']"
  type: boolean
  inputBinding:
    prefix: -offset
- id: step
  doc: "(1 arg) :    step  [default '1']"
  type: boolean
  inputBinding:
    prefix: -step
- id: kval
  doc: "(1 arg) :    file with kmer values   [default '']"
  type: boolean
  inputBinding:
    prefix: -kval
- id: dont_reverse
  doc: '(0 arg) :    do not reverse kmers, count forward and reverse complement separately'
  type: boolean
  inputBinding:
    prefix: -dont-reverse
- id: freq
  doc: '(0 arg) :    output frequency'
  type: boolean
  inputBinding:
    prefix: -freq
- id: per_seq
  doc: '(0 arg) :    one output file and count per fasta sequence'
  type: boolean
  inputBinding:
    prefix: -perSeq
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerInShort
