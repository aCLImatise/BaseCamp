class: CommandLineTool
id: ../../../dsk.cwl
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
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_file
  doc: '(1 arg) :    reads file'
  type: boolean
  inputBinding:
    prefix: -file
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
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
    \ \"auto\")  [default '2']"
  type: boolean
  inputBinding:
    prefix: -abundance-min-threshold
- id: in_histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean
  inputBinding:
    prefix: -histo-max
- id: in_solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all,\
    \ custom)  [default 'sum']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: in_solidity_custom
  doc: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer\
    \ must be present  [default '']"
  type: boolean
  inputBinding:
    prefix: -solidity-custom
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
  doc: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -out-compress
- id: in_storage_type
  doc: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
  type: boolean
  inputBinding:
    prefix: -storage-type
- id: in_histo_two_d
  doc: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining\
    \ files = reads)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo2D
- id: in_histo
  doc: "(1 arg) :    output the kmer abundance histogram  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo
- id: in_minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -minimizer-type
- id: in_minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '10']"
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
- dsk
