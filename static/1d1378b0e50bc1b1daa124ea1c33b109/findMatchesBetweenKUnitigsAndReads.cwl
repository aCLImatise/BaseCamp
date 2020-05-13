class: CommandLineTool
id: findMatchesBetweenKUnitigsAndReads.cwl
inputs:
- id: long
  doc: Long output format (false)
  type: boolean
  inputBinding:
    prefix: --long
- id: output
  doc: Output file (kunitigs_reads_matches)
  type: string
  inputBinding:
    prefix: --output
- id: mer
  doc: '*Length of mer'
  type: string
  inputBinding:
    prefix: --mer
- id: gzip
  doc: Gzip output (false)
  type: boolean
  inputBinding:
    prefix: --gzip
- id: threads
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: Be verbose (false)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- findMatchesBetweenKUnitigsAndReads
