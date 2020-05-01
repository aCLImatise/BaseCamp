#!/usr/bin/env cwl-runner

baseCommand:
- TakeABreak
class: CommandLineTool
cwlVersion: v1.0
id: takeabreak
inputs:
- doc: "(1 arg) :    input read file(s)  [default '']"
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
  id: graph
  inputBinding:
    prefix: -graph
  type: boolean
- doc: "(1 arg) :    prefix for output files  [default '']"
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: "(1 arg) :    size of a kmer  [default '31']"
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
  id: abundance_min
  inputBinding:
    prefix: -abundance-min
  type: boolean
- doc: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
  id: abundance_max
  inputBinding:
    prefix: -abundance-max
  type: boolean
- doc: "(1 arg) :    way to consider a solid kmer with several datasets (sum, one,\
    \ or all)  [default 'one']"
  id: solidity_kind
  inputBinding:
    prefix: -solidity-kind
  type: boolean
- doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  id: max_disk
  inputBinding:
    prefix: -max-disk
  type: boolean
- doc: "(1 arg) :    max memory (in MBytes)  [default '2000']"
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: "(1 arg) :    max similarity percentage between a and b' and between u and\
    \ v'  [default '80']"
  id: max_sim
  inputBinding:
    prefix: -max-sim
  type: boolean
- doc: "(1 arg) :    maximal repeat size at the breakpoint (longest common suffix\
    \ between a and b')  [default '8']"
  id: repeat
  inputBinding:
    prefix: -repeat
  type: boolean
- doc: "(1 arg) :    local complexity threshold (LCT)  [default '100']"
  id: lct
  inputBinding:
    prefix: -lct
  type: boolean
- doc: '(0 arg) :    version'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
