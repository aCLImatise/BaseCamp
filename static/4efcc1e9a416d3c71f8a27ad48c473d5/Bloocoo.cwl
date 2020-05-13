class: CommandLineTool
id: Bloocoo.cwl
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
  doc: '(1 arg) :    reads file'
  type: boolean
  inputBinding:
    prefix: -file
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '3']"
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
  doc: "(1 arg) :    output file for solid kmers  [default '']"
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
- id: high_recall
  doc: '(0 arg) :    correct a lot but can introduce more mistakes'
  type: boolean
  inputBinding:
    prefix: -high-recall
- id: high_precision
  doc: '(0 arg) :    correct safely, correct less but introduce less mistakes'
  type: boolean
  inputBinding:
    prefix: -high-precision
- id: slow
  doc: '(0 arg) :    slower but better correction'
  type: boolean
  inputBinding:
    prefix: -slow
- id: ion
  doc: '(0 arg) :    ion correction mode'
  type: boolean
  inputBinding:
    prefix: -ion
- id: err_tab
  doc: '(0 arg) :    generate error tabs'
  type: boolean
  inputBinding:
    prefix: -err-tab
- id: max_trim
  doc: "(1 arg) :    max number of bases that can be trimmed per read  [default '']"
  type: boolean
  inputBinding:
    prefix: -max-trim
- id: from_h5
  doc: '(0 arg) :    do not re-compute kmer counts, suppose h5 file already computed
    (with previous run with -count-only)'
  type: boolean
  inputBinding:
    prefix: -from-h5
- id: count_only
  doc: '(0 arg) :    do not correct, only count kmers'
  type: boolean
  inputBinding:
    prefix: -count-only
outputs: []
cwlVersion: v1.1
baseCommand:
- Bloocoo
