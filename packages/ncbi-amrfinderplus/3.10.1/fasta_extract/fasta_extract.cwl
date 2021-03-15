class: CommandLineTool
id: fasta_extract.cwl
inputs:
- id: in_threads
  doc: ''
  type: long?
  inputBinding:
    prefix: -threads
- id: in_seed
  doc: ''
  type: long?
  inputBinding:
    prefix: -seed
- id: in_profile
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -profile
- id: in_no_progress
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -noprogress
- id: in_verbose
  doc: ''
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_qc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -qc
- id: in_aa
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0
cwlVersion: v1.1
baseCommand:
- fasta_extract
