class: CommandLineTool
id: TakeABreak.cwl
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
- id: solidity_kind
  doc: "(1 arg) :    way to consider a solid kmer with several datasets (sum, one,\
    \ or all)  [default 'one']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '2000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: max_sim
  doc: "(1 arg) :    max similarity percentage between a and b' and between u and\
    \ v'  [default '80']"
  type: boolean
  inputBinding:
    prefix: -max-sim
- id: repeat
  doc: "(1 arg) :    maximal repeat size at the breakpoint (longest common suffix\
    \ between a and b')  [default '8']"
  type: boolean
  inputBinding:
    prefix: -repeat
- id: lct
  doc: "(1 arg) :    local complexity threshold (LCT)  [default '100']"
  type: boolean
  inputBinding:
    prefix: -lct
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
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
outputs: []
cwlVersion: v1.1
baseCommand:
- TakeABreak
