class: CommandLineTool
id: ../../../findMatchesBetweenKUnitigsAndReads.cwl
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
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: kuni_tig_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- findMatchesBetweenKUnitigsAndReads
