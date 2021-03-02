class: CommandLineTool
id: CHROMEISTER.cwl
inputs:
- id: in_km_er
  doc: '[Integer:   k>1 (default 32)]'
  type: boolean?
  inputBinding:
    prefix: -kmer
- id: in_diffuse
  doc: '[Integer:   z>0 (default 4)]'
  type: boolean?
  inputBinding:
    prefix: -diffuse
- id: in_dimension
  doc: 'Size of the output [Integer:   d>0 (default 1000)]'
  type: boolean?
  inputBinding:
    prefix: -dimension
- id: in_out
  doc: '[File path]'
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_db
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_var_5
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_database
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chromeister:1.5.a--h516909a_0
cwlVersion: v1.1
baseCommand:
- CHROMEISTER
