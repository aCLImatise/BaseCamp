class: CommandLineTool
id: simkaMinCore_sketch.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    input filename | TODO SPECIF'
  type: boolean
  inputBinding:
    prefix: -in
- id: in_out
  doc: "(1 arg) :    output filename for kmer spectrum  [default './simkaMin_kmers.bin']"
  type: File
  inputBinding:
    prefix: -out
- id: in_seed
  doc: "(1 arg) :    seed used for random k-mer selection  [default '100']"
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '21']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in_nb_km_ers
  doc: "(1 arg) :    number of kmers used to compute distances  [default '100000']"
  type: boolean
  inputBinding:
    prefix: -nb-kmers
- id: in_filter
  doc: '(0 arg) :    filter out k-mer seen one time (potentially erroneous)'
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_max_reads
  doc: "(1 arg) :    maximum number of reads to process. Set to 0 to use all reads\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-reads
- id: in_min_read_size
  doc: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
  type: boolean
  inputBinding:
    prefix: -min-read-size
- id: in_min_shannon_index
  doc: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in\
    \ [0,2]  [default '0']"
  type: boolean
  inputBinding:
    prefix: -min-shannon-index
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_max_memory
  doc: "(1 arg) :    max memory (MB). Only used if -filter is enabled  [default '8000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "(1 arg) :    output filename for kmer spectrum  [default './simkaMin_kmers.bin']"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- sketch
