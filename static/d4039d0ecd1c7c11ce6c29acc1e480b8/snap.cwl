class: CommandLineTool
id: snap.cwl
inputs:
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: lc_mask
  doc: treat lowercase as N
  type: boolean
  inputBinding:
    prefix: -lcmask
- id: plus
  doc: predict on plus strand only
  type: boolean
  inputBinding:
    prefix: -plus
- id: minus
  doc: predict on minus strand only
  type: boolean
  inputBinding:
    prefix: -minus
- id: gff
  doc: output annotation as GFF
  type: boolean
  inputBinding:
    prefix: -gff
- id: ace
  doc: output annotation as ACED
  type: boolean
  inputBinding:
    prefix: -ace
- id: quiet
  doc: do not send progress to STDERR
  type: boolean
  inputBinding:
    prefix: -quiet
- id: aa
  doc: create FASTA file of proteins
  type: File
  inputBinding:
    prefix: -aa
- id: tx
  doc: create FASTA file of transcripts
  type: File
  inputBinding:
    prefix: -tx
- id: xdef
  doc: external definitions
  type: File
  inputBinding:
    prefix: -xdef
- id: name
  doc: name for the gene [default snap]
  type: string
  inputBinding:
    prefix: -name
outputs: []
cwlVersion: v1.1
baseCommand:
- snap
