class: CommandLineTool
id: simkaMinCore_sketch.cwl
inputs:
- id: in
  doc: '(1 arg) :    input filename | TODO SPECIF'
  type: boolean
  inputBinding:
    prefix: -in
- id: out
  doc: "(1 arg) :    output filename for kmer spectrum  [default './simkaMin_kmers.bin']"
  type: boolean
  inputBinding:
    prefix: -out
- id: seed
  doc: "(1 arg) :    seed used for random k-mer selection  [default '100']"
  type: boolean
  inputBinding:
    prefix: -seed
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '21']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: nb_km_ers
  doc: "(1 arg) :    number of kmers used to compute distances  [default '100000']"
  type: boolean
  inputBinding:
    prefix: -nb-kmers
- id: filter
  doc: '(0 arg) :    filter out k-mer seen one time (potentially erroneous)'
  type: boolean
  inputBinding:
    prefix: -filter
- id: max_reads
  doc: "(1 arg) :    maximum number of reads to process. Set to 0 to use all reads\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-reads
- id: min_read_size
  doc: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
  type: boolean
  inputBinding:
    prefix: -min-read-size
- id: min_shannon_index
  doc: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in\
    \ [0,2]  [default '0']"
  type: boolean
  inputBinding:
    prefix: -min-shannon-index
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: max_memory
  doc: "(1 arg) :    max memory (MB). Only used if -filter is enabled  [default '8000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- sketch
