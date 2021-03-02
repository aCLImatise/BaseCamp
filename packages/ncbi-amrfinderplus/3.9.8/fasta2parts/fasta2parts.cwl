class: CommandLineTool
id: fasta2parts.cwl
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
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parts_max
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0
cwlVersion: v1.1
baseCommand:
- fasta2parts
