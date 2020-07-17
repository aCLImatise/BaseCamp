class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/map2assembly.cwl
inputs:
- id: cpus
  doc: '|c  <integer>  Tells how many cpus to use for BLAST analysis.'
  type: boolean
  inputBinding:
    prefix: -cpus
- id: retry
  doc: '|r <integer>  Rerun failed contigs up to the specified count.'
  type: boolean
  inputBinding:
    prefix: -retry
- id: force
  doc: '|f            Delete old files before running again.'
  type: boolean
  inputBinding:
    prefix: -force
- id: again
  doc: '|a            Run again without deleting files.'
  type: boolean
  inputBinding:
    prefix: -again
- id: quiet
  doc: '|q            Silences most status messages.'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: genome_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: transcripts_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- map2assembly
