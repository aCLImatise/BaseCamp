class: CommandLineTool
id: simkaCount.cwl
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
- id: in_out_tmp_sim_ka
  doc: '(1 arg) :    tmp output'
  type: boolean
  inputBinding:
    prefix: -out-tmp-simka
- id: in_bank_name
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -bank-name
- id: in_bank_index
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -bank-index
- id: in_min_read_size
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -min-read-size
- id: in_min_shannon_index
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -min-shannon-index
- id: in_max_reads
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -max-reads
- id: in_nb_datasets
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -nb-datasets
- id: in_nb_partitions
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -nb-partitions
- id: in_in
  doc: '(1 arg) :    reads file'
  type: boolean
  inputBinding:
    prefix: -in
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '0']"
  type: boolean
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean
  inputBinding:
    prefix: -abundance-max
- id: in_abundance_min_threshold
  doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '3']"
  type: boolean
  inputBinding:
    prefix: -abundance-min-threshold
- id: in_histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean
  inputBinding:
    prefix: -histo-max
- id: in_solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all)\
    \  [default 'sum']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: in_max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: in_max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: in_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: File
  inputBinding:
    prefix: -solid-kmers-out
- id: in_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory
  inputBinding:
    prefix: -out-dir
- id: in_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory
  inputBinding:
    prefix: -out-tmp
- id: in_out_compress
  doc: "(1 arg) :    output compression level (0:none, 9:best)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -out-compress
- id: in_minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -minimizer-type
- id: in_minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '8']"
  type: boolean
  inputBinding:
    prefix: -minimizer-size
- id: in_repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -repartition-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_solid_km_ers_out)
- id: out_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_tmp)
cwlVersion: v1.1
baseCommand:
- simkaCount
