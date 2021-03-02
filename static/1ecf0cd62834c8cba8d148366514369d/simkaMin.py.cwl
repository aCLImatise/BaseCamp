class: CommandLineTool
id: simkaMin.py.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    input file of datasets. One sample per line: id1: filename1...'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_out
  doc: '(1 arg) :    output directory for result files (distance matrices) [Default:
    ./simka_results]'
  type: Directory?
  inputBinding:
    prefix: -out
- id: in_seed
  doc: '(1 arg) :    seed used for random k-mer selection [Default: 100]'
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_bin
  doc: '(1 arg) :    path to simkaMinCore program (to be specified if not in PATH,
    or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)'
  type: boolean?
  inputBinding:
    prefix: -bin
- id: in_nb_cores
  doc: '(1 arg) :    number of cores [Default: 0]'
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_max_memory
  doc: '(1 arg) :    max memory (MB) [Default: 8000]'
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_km_er_size
  doc: '(1 arg) :    size of a kmer [Default: 21]'
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_nb_km_ers
  doc: '(1 arg) :    number of kmers used to compute distances [Default: 1000000]'
  type: boolean?
  inputBinding:
    prefix: -nb-kmers
- id: in_filter
  doc: '(0 arg) :    filter out k-mer seen one time (potentially erroneous)'
  type: boolean?
  inputBinding:
    prefix: -filter
- id: in_max_reads
  doc: '(1 arg) :    maximum number of reads per sample to process [Default: 0]'
  type: boolean?
  inputBinding:
    prefix: -max-reads
- id: in_min_read_size
  doc: '(1 arg) :    minimal size a read should have to be kept [Default: 0]'
  type: boolean?
  inputBinding:
    prefix: -min-read-size
- id: in_min_shannon_index
  doc: '(1 arg) :    minimal Shannon index a read should have to be kept. Float in
    [0,2] [Default: 0]'
  type: boolean?
  inputBinding:
    prefix: -min-shannon-index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '(1 arg) :    output directory for result files (distance matrices) [Default:
    ./simka_results]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- simkaMin.py
