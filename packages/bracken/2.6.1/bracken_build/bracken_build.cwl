class: CommandLineTool
id: bracken_build.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_x
  doc: ''
  type: string?
  inputBinding:
    prefix: -x
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_k
  doc: ''
  type: string?
  inputBinding:
    prefix: -k
- id: in_km_er_len
  doc: 'kmer length used to build the kraken database (default: 35)'
  type: string
  inputBinding:
    position: 0
- id: in_threads
  doc: the number of threads to use when running kraken classification and the bracken
    scripts
  type: string
  inputBinding:
    position: 1
- id: in_read_len
  doc: 'read length to get all classifications for (default: 100)'
  type: string
  inputBinding:
    position: 2
- id: in_my_db
  doc: location of Kraken database
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- bracken-build
