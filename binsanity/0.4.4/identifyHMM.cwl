class: CommandLineTool
id: ../../../identifyHMM.cwl
inputs:
- id: marker_db
  doc: Provide HMM file of markers. Markers should have a descriptive ID name.
  type: string
  inputBinding:
    prefix: --markerdb
- id: perform_prodigal
  doc: Run Prodigal on input genome nucleotide FASTA file
  type: boolean
  inputBinding:
    prefix: --performProdigal
- id: cut_tc
  doc: use hmm profiles TC trusted cutoffs to set all thresholding
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: out_prefix
  doc: Provide prefix of names for marker output files.
  type: string
  inputBinding:
    prefix: --outPrefix
- id: set_evalue_used
  doc: 'Set E-Value to be used in hmmsearch. Default: 1E-5'
  type: string
  inputBinding:
    prefix: -E
- id: input
  doc: Target file(s). Provide unifying text of desired genome(s). Ext must be 'fna'
    or 'faa'.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- identifyHMM
