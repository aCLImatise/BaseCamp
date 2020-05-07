class: CommandLineTool
id: simkaCount.cwl
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
- id: out_tmp_sim_ka
  doc: '(1 arg) :    tmp output'
  type: boolean
  inputBinding:
    prefix: -out-tmp-simka
- id: bank_name
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -bank-name
- id: bank_index
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -bank-index
- id: min_read_size
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -min-read-size
- id: min_shannon_index
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -min-shannon-index
- id: max_reads
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -max-reads
- id: nb_datasets
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -nb-datasets
- id: nb_partitions
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -nb-partitions
- id: in
  doc: '(1 arg) :    reads file'
  type: boolean
  inputBinding:
    prefix: -in
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '0']"
  type: boolean
  inputBinding:
    prefix: -abundance-min
- id: abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean
  inputBinding:
    prefix: -abundance-max
- id: abundance_min_threshold
  doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '3']"
  type: boolean
  inputBinding:
    prefix: -abundance-min-threshold
- id: histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean
  inputBinding:
    prefix: -histo-max
- id: solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all)\
    \  [default 'sum']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: boolean
  inputBinding:
    prefix: -solid-kmers-out
- id: out
  doc: "(1 arg) :    output file  [default '']"
  type: boolean
  inputBinding:
    prefix: -out
- id: out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: boolean
  inputBinding:
    prefix: -out-dir
- id: out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: boolean
  inputBinding:
    prefix: -out-tmp
- id: out_compress
  doc: "(1 arg) :    output compression level (0:none, 9:best)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -out-compress
- id: minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -minimizer-type
- id: minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '8']"
  type: boolean
  inputBinding:
    prefix: -minimizer-size
- id: repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -repartition-type
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaCount
