class: CommandLineTool
id: simkaMerge.cwl
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
- id: nb_cores
  doc: '(1 arg) :    nb cores'
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: km_er_size
  doc: '(1 arg) :    kmer size'
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in
  doc: '(1 arg) :    input filename'
  type: boolean
  inputBinding:
    prefix: -in
- id: out_tmp_sim_ka
  doc: '(1 arg) :    tmp output'
  type: boolean
  inputBinding:
    prefix: -out-tmp-simka
- id: partition_id
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -partition-id
- id: nb_cores
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: max_memory
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: km_er_shannon_index
  doc: '(1 arg) :    bank name'
  type: boolean
  inputBinding:
    prefix: -kmer-shannon-index
- id: simple_dist
  doc: '(0 arg) :    compute simple distances'
  type: boolean
  inputBinding:
    prefix: -simple-dist
- id: complex_dist
  doc: '(0 arg) :    compute complex distances'
  type: boolean
  inputBinding:
    prefix: -complex-dist
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaMerge
