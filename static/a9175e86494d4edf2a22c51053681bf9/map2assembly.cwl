class: CommandLineTool
id: map2assembly.cwl
inputs:
- id: in_cpus
  doc: '|c  <integer>  Tells how many cpus to use for BLAST analysis.'
  type: boolean
  inputBinding:
    prefix: -cpus
- id: in_retry
  doc: '|r <integer>  Rerun failed contigs up to the specified count.'
  type: boolean
  inputBinding:
    prefix: -retry
- id: in_force
  doc: '|f            Delete old files before running again.'
  type: boolean
  inputBinding:
    prefix: -force
- id: in_again
  doc: '|a            Run again without deleting files.'
  type: boolean
  inputBinding:
    prefix: -again
- id: in_quiet
  doc: '|q            Silences most status messages.'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_maps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_old
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_models
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_new
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- map2assembly
