class: CommandLineTool
id: KmerInShort.cwl
inputs:
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_file
  doc: '(1 arg) :    input file'
  type: boolean
  inputBinding:
    prefix: -file
- id: in_km_er_size
  doc: '(1 arg) :    ksize'
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  inputBinding:
    prefix: -out
- id: in_offset
  doc: "(1 arg) :    starting offset  [default '0']"
  type: boolean
  inputBinding:
    prefix: -offset
- id: in_step
  doc: "(1 arg) :    step  [default '1']"
  type: boolean
  inputBinding:
    prefix: -step
- id: in_kval
  doc: "(1 arg) :    file with kmer values   [default '']"
  type: boolean
  inputBinding:
    prefix: -kval
- id: in_dont_reverse
  doc: '(0 arg) :    do not reverse kmers, count forward and reverse complement separately'
  type: boolean
  inputBinding:
    prefix: -dont-reverse
- id: in_freq
  doc: '(0 arg) :    output frequency'
  type: boolean
  inputBinding:
    prefix: -freq
- id: in_per_seq
  doc: '(0 arg) :    one output file and count per fasta sequence'
  type: File
  inputBinding:
    prefix: -perSeq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_per_seq
  doc: '(0 arg) :    one output file and count per fasta sequence'
  type: File
  outputBinding:
    glob: $(inputs.in_per_seq)
cwlVersion: v1.1
baseCommand:
- KmerInShort
