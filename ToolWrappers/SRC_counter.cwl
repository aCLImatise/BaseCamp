class: CommandLineTool
id: SRC_counter.cwl
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
- id: in_graph
  doc: '(1 arg) :    graph input'
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_bank
  doc: '(1 arg) :    bank input'
  type: boolean
  inputBinding:
    prefix: -bank
- id: in_query
  doc: '(1 arg) :    query input'
  type: boolean
  inputBinding:
    prefix: -query
- id: in_keep_low_complexity
  doc: '(0 arg) :    Conserve low complexity sequences during indexing and querying'
  type: boolean
  inputBinding:
    prefix: -keep_low_complexity
- id: in_gamma
  doc: "(1 arg) :    gamma value  [default '2']"
  type: boolean
  inputBinding:
    prefix: -gamma
- id: in_fingerprint_size
  doc: "(1 arg) :    fingerprint size  [default '8']"
  type: boolean
  inputBinding:
    prefix: -fingerprint_size
- id: in_core
  doc: "(1 arg) :    Number of thread  [default '1']"
  type: boolean
  inputBinding:
    prefix: -core
- id: in_coverage_threshold
  doc: "(1 arg) :    Minimal percentage of shared kmer span for considering a query\
    \ read as similar to a read set.  The kmer span is the number of bases from the\
    \ read query covered by a kmer shared with the target bank read set. If a read\
    \ of length 80 has a kmer-span of 60 with the bank, then the percentage of shared\
    \ kmer span is 75%. If a least a windows (of size \"windows_size\" contains at\
    \ least kmer_threshold percent of positionf covered by shared kmers, the read\
    \ is output in the boolean vector).  [default '50']"
  type: boolean
  inputBinding:
    prefix: -coverage_threshold
- id: in_windows_size
  doc: "(1 arg) :    size of the window. If the windows size is zero (default value),\
    \ then the full read is considered  [default '0']"
  type: boolean
  inputBinding:
    prefix: -windows_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SRC_counter
