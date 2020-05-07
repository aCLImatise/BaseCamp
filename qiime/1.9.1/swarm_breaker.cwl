class: CommandLineTool
id: swarm_breaker.py.cwl
inputs:
- id: binary
  doc: swarm binary location. Default is /usr/bin/swarm
  type: string
  inputBinding:
    prefix: --binary
- id: differences
  doc: set local clustering <THRESHOLD>. Default is 1
  type: string
  inputBinding:
    prefix: --differences
- id: fast_a_file
  doc: set <FILENAME> as fasta file.
  type: File
  inputBinding:
    prefix: --fasta_file
- id: swarm_file
  doc: set <FILENAME> as swarm file.
  type: File
  inputBinding:
    prefix: --swarm_file
- id: threads
  doc: set the number of <THREADS>. Default is 1
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: verbose (debugging, writes to the standard error)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: u_search_abundance
  doc: abundance annotation in usearch style
  type: boolean
  inputBinding:
    prefix: --usearch_abundance
outputs: []
cwlVersion: v1.1
baseCommand:
- swarm_breaker.py
