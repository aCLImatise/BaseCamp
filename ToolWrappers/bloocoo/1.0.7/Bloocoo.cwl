class: CommandLineTool
id: Bloocoo.cwl
inputs:
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_file
  doc: '(1 arg) :    reads file'
  type: boolean?
  inputBinding:
    prefix: -file
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '3']"
  type: boolean?
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean?
  inputBinding:
    prefix: -abundance-max
- id: in_abundance_min_threshold
  doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '3']"
  type: boolean?
  inputBinding:
    prefix: -abundance-min-threshold
- id: in_histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean?
  inputBinding:
    prefix: -histo-max
- id: in_solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all)\
    \  [default 'sum']"
  type: boolean?
  inputBinding:
    prefix: -solidity-kind
- id: in_max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -max-disk
- id: in_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers  [default '']"
  type: File?
  inputBinding:
    prefix: -solid-kmers-out
- id: in_out
  doc: "(1 arg) :    output file  [default '']"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory?
  inputBinding:
    prefix: -out-dir
- id: in_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory?
  inputBinding:
    prefix: -out-tmp
- id: in_out_compress
  doc: "(1 arg) :    output compression level (0:none, 9:best)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -out-compress
- id: in_minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -minimizer-type
- id: in_minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '8']"
  type: boolean?
  inputBinding:
    prefix: -minimizer-size
- id: in_repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -repartition-type
- id: in_high_recall
  doc: '(0 arg) :    correct a lot but can introduce more mistakes'
  type: boolean?
  inputBinding:
    prefix: -high-recall
- id: in_high_precision
  doc: '(0 arg) :    correct safely, correct less but introduce less mistakes'
  type: boolean?
  inputBinding:
    prefix: -high-precision
- id: in_slow
  doc: '(0 arg) :    slower but better correction'
  type: boolean?
  inputBinding:
    prefix: -slow
- id: in_ion
  doc: '(0 arg) :    ion correction mode'
  type: boolean?
  inputBinding:
    prefix: -ion
- id: in_err_tab
  doc: '(0 arg) :    generate error tabs'
  type: boolean?
  inputBinding:
    prefix: -err-tab
- id: in_max_trim
  doc: "(1 arg) :    max number of bases that can be trimmed per read  [default '']"
  type: boolean?
  inputBinding:
    prefix: -max-trim
- id: in_from_h_five
  doc: '(0 arg) :    do not re-compute kmer counts, suppose h5 file already computed
    (with previous run with -count-only)'
  type: boolean?
  inputBinding:
    prefix: -from-h5
- id: in_count_only
  doc: '(0 arg) :    do not correct, only count kmers'
  type: boolean?
  inputBinding:
    prefix: -count-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers  [default '']"
  type: File?
  outputBinding:
    glob: $(inputs.in_solid_km_ers_out)
- id: out_out
  doc: "(1 arg) :    output file  [default '']"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_tmp)
hints: []
cwlVersion: v1.1
baseCommand:
- Bloocoo
