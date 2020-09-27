class: CommandLineTool
id: SRC_linker_ram.cwl
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
- id: in_km_er_threshold
  doc: "(1 arg) :    Minimal percentage of shared kmer span for considering 2 reads\
    \ as similar.  The kmer span is the number of bases from the read query covered\
    \ by a kmer shared with the target read. If a read of length 80 has a kmer-span\
    \ of 60 with another read from the bank (of unkonwn size), then the percentage\
    \ of shared kmer span is 75%. If a least a windows (of size \"windows_size\" contains\
    \ at least kmer_threshold percent of positionf covered by shared kmers, the read\
    \ couple is conserved).  [default '75']"
  type: boolean
  inputBinding:
    prefix: -kmer_threshold
- id: in_windows_size
  doc: "(1 arg) :    size of the window. If the windows size is zero (default value),\
    \ then the full read is considered  [default '0']"
  type: boolean
  inputBinding:
    prefix: -windows_size
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
  doc: "(1 arg) :    Number of thread(s)  [default '1']"
  type: boolean
  inputBinding:
    prefix: -core
- id: in_no_sharing_detail
  doc: '(0 arg) :    Output ids of reads from query input that are shared with at
    least one read from reference bank input. With this option no information with
    whom a read is shared is provided, one only knows that a read is shared.'
  type: boolean
  inputBinding:
    prefix: -no_sharing_detail
- id: in_keep_low_complexity
  doc: '(0 arg) :    Conserve low complexity sequences during indexing and querying'
  type: boolean
  inputBinding:
    prefix: -keep_low_complexity
- id: in_zero_density_windows_size
  doc: "(1 arg) :    If defined (>0): two reads are linked if they DO NOT contain\
    \ a window of this size, with a percentage of zero higher than \"-zero_density_threshold\"\
    . Note: this test is performed over the full read length, not limited to \"-windows_size\"\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -zero_density_windows_size
- id: in_zero_density_threshold
  doc: "(1 arg) :    See \"-zero_density_windows_size\"  [default '80']"
  type: boolean
  inputBinding:
    prefix: -zero_density_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SRC_linker_ram
