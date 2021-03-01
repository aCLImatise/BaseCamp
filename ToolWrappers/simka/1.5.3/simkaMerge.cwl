class: CommandLineTool
id: simkaMerge.cwl
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
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_km_er_size
  doc: '(1 arg) :    kmer size'
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_in
  doc: '(1 arg) :    input filename'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_out_tmp_sim_ka
  doc: '(1 arg) :    tmp output'
  type: boolean?
  inputBinding:
    prefix: -out-tmp-simka
- id: in_partition_id
  doc: '(1 arg) :    bank name'
  type: boolean?
  inputBinding:
    prefix: -partition-id
- id: in_max_memory
  doc: '(1 arg) :    bank name'
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_km_er_shannon_index
  doc: '(1 arg) :    bank name'
  type: boolean?
  inputBinding:
    prefix: -kmer-shannon-index
- id: in_simple_dist
  doc: '(0 arg) :    compute simple distances'
  type: boolean?
  inputBinding:
    prefix: -simple-dist
- id: in_complex_dist
  doc: '(0 arg) :    compute complex distances'
  type: boolean?
  inputBinding:
    prefix: -complex-dist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simka:1.5.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- simkaMerge
