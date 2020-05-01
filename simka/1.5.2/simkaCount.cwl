#!/usr/bin/env cwl-runner

baseCommand:
- simkaCount
class: CommandLineTool
cwlVersion: v1.0
id: simkacount
inputs:
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
- doc: '(1 arg) :    tmp output'
  id: out_tmp_sim_ka
  inputBinding:
    prefix: -out-tmp-simka
  type: boolean
- doc: '(1 arg) :    bank name'
  id: bank_name
  inputBinding:
    prefix: -bank-name
  type: boolean
- doc: '(1 arg) :    bank name'
  id: bank_index
  inputBinding:
    prefix: -bank-index
  type: boolean
- doc: '(1 arg) :    bank name'
  id: min_read_size
  inputBinding:
    prefix: -min-read-size
  type: boolean
- doc: '(1 arg) :    bank name'
  id: min_shannon_index
  inputBinding:
    prefix: -min-shannon-index
  type: boolean
- doc: '(1 arg) :    bank name'
  id: max_reads
  inputBinding:
    prefix: -max-reads
  type: boolean
- doc: '(1 arg) :    bank name'
  id: nb_datasets
  inputBinding:
    prefix: -nb-datasets
  type: boolean
- doc: '(1 arg) :    bank name'
  id: nb_partitions
  inputBinding:
    prefix: -nb-partitions
  type: boolean
- doc: '(1 arg) :    reads file'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "(1 arg) :    size of a kmer  [default '31']"
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: "(1 arg) :    min abundance threshold for solid kmers  [default '0']"
  id: abundance_min
  inputBinding:
    prefix: -abundance-min
  type: boolean
- doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  id: abundance_max
  inputBinding:
    prefix: -abundance-max
  type: boolean
- doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '3']"
  id: abundance_min_threshold
  inputBinding:
    prefix: -abundance-min-threshold
  type: boolean
- doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  id: histo_max
  inputBinding:
    prefix: -histo-max
  type: boolean
- doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all)\
    \  [default 'sum']"
  id: solidity_kind
  inputBinding:
    prefix: -solidity-kind
  type: boolean
- doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  id: max_disk
  inputBinding:
    prefix: -max-disk
  type: boolean
- doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  id: solid_km_ers_out
  inputBinding:
    prefix: -solid-kmers-out
  type: boolean
- doc: "(1 arg) :    output file  [default '']"
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: "(1 arg) :    output directory  [default '.']"
  id: out_dir
  inputBinding:
    prefix: -out-dir
  type: boolean
- doc: "(1 arg) :    output directory for temporary files  [default '.']"
  id: out_tmp
  inputBinding:
    prefix: -out-tmp
  type: boolean
- doc: "(1 arg) :    output compression level (0:none, 9:best)  [default '0']"
  id: out_compress
  inputBinding:
    prefix: -out-compress
  type: boolean
- doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  id: minimizer_type
  inputBinding:
    prefix: -minimizer-type
  type: boolean
- doc: "(1 arg) :    size of a minimizer  [default '8']"
  id: minimizer_size
  inputBinding:
    prefix: -minimizer-size
  type: boolean
- doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  id: repartition_type
  inputBinding:
    prefix: -repartition-type
  type: boolean
