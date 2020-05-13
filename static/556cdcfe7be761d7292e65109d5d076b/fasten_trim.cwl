class: CommandLineTool
id: fasten_trim.cwl
inputs:
- id: num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: first_base
  doc: 'The first base to keep (default: 0)'
  type: long
  inputBinding:
    prefix: --first-base
- id: last_base
  doc: 'The last base to keep. If negative, counts from the right. (default: 0)'
  type: long
  inputBinding:
    prefix: --last-base
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_trim
