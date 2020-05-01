#!/usr/bin/env cwl-runner

baseCommand:
- Bloocoo
class: CommandLineTool
cwlVersion: v1.0
id: bloocoo
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
- doc: '(1 arg) :    reads file'
  id: file
  inputBinding:
    prefix: -file
  type: boolean
- doc: "(1 arg) :    size of a kmer  [default '31']"
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: "(1 arg) :    min abundance threshold for solid kmers  [default '3']"
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
- doc: "(1 arg) :    output file for solid kmers  [default '']"
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
- doc: '(0 arg) :    correct a lot but can introduce more mistakes'
  id: high_recall
  inputBinding:
    prefix: -high-recall
  type: boolean
- doc: '(0 arg) :    correct safely, correct less but introduce less mistakes'
  id: high_precision
  inputBinding:
    prefix: -high-precision
  type: boolean
- doc: '(0 arg) :    slower but better correction'
  id: slow
  inputBinding:
    prefix: -slow
  type: boolean
- doc: '(0 arg) :    ion correction mode'
  id: ion
  inputBinding:
    prefix: -ion
  type: boolean
- doc: '(0 arg) :    generate error tabs'
  id: err_tab
  inputBinding:
    prefix: -err-tab
  type: boolean
- doc: "(1 arg) :    max number of bases that can be trimmed per read  [default '']"
  id: max_trim
  inputBinding:
    prefix: -max-trim
  type: boolean
- doc: '(0 arg) :    do not re-compute kmer counts, suppose h5 file already computed
    (with previous run with -count-only)'
  id: from_h5
  inputBinding:
    prefix: -from-h5
  type: boolean
- doc: '(0 arg) :    do not correct, only count kmers'
  id: count_only
  inputBinding:
    prefix: -count-only
  type: boolean
