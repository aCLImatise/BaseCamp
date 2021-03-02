class: CommandLineTool
id: snap.cwl
inputs:
- id: in_lc_mask
  doc: treat lowercase as N
  type: boolean?
  inputBinding:
    prefix: -lcmask
- id: in_plus
  doc: predict on plus strand only
  type: boolean?
  inputBinding:
    prefix: -plus
- id: in_minus
  doc: predict on minus strand only
  type: boolean?
  inputBinding:
    prefix: -minus
- id: in_gff
  doc: output annotation as GFF
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_ace
  doc: output annotation as ACED
  type: boolean?
  inputBinding:
    prefix: -ace
- id: in_quiet
  doc: do not send progress to STDERR
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_aa
  doc: create FASTA file of proteins
  type: File?
  inputBinding:
    prefix: -aa
- id: in_tx
  doc: create FASTA file of transcripts
  type: File?
  inputBinding:
    prefix: -tx
- id: in_xdef
  doc: external definitions
  type: File?
  inputBinding:
    prefix: -xdef
- id: in_name
  doc: name for the gene [default snap]
  type: string?
  inputBinding:
    prefix: -name
- id: in_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snap
