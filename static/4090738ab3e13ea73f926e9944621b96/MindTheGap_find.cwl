class: CommandLineTool
id: MindTheGap_find.cwl
inputs:
- id: in
  doc: "(1 arg) :    input read file(s)  [default '']"
  type: boolean
  inputBinding:
    prefix: -in
- id: graph
  doc: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
  type: boolean
  inputBinding:
    prefix: -graph
- id: ref
  doc: '(1 arg) :    reference genome file'
  type: boolean
  inputBinding:
    prefix: -ref
- id: bed
  doc: "(1 arg) :    bed file to restrict breakpoint search in specific regions  [default\
    \ '']"
  type: boolean
  inputBinding:
    prefix: -bed
- id: out_tmp
  doc: "(1 arg) :    prefix for output temporary files  [default '.']"
  type: boolean
  inputBinding:
    prefix: -out-tmp
- id: out
  doc: "(1 arg) :    prefix for output files  [default '']"
  type: boolean
  inputBinding:
    prefix: -out
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: abundance_min
  doc: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
  type: boolean
  inputBinding:
    prefix: -abundance-min
- id: abundance_max
  doc: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
  type: boolean
  inputBinding:
    prefix: -abundance-max
- id: homo_only
  doc: '(0 arg) :    search only homozygous breakpoints'
  type: boolean
  inputBinding:
    prefix: -homo-only
- id: max_rep
  doc: "(1 arg) :    maximal repeat size detected for fuzzy sites  [default '5']"
  type: boolean
  inputBinding:
    prefix: -max-rep
- id: het_max_occ
  doc: "(1 arg) :    maximal number of occurrences of a kmer in the reference genome\
    \ allowed for heterozyguous breakpoints  [default '1']"
  type: boolean
  inputBinding:
    prefix: -het-max-occ
- id: insert_only
  doc: '(0 arg) :    search only insertion breakpoints (do not report other variants)'
  type: boolean
  inputBinding:
    prefix: -insert-only
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: max_disk
  doc: "(1 arg) :    max disk for graph building (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: max_memory
  doc: "(1 arg) :    max memory for graph building (in MBytes)  [default '2000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- MindTheGap
- find
