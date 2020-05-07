class: CommandLineTool
id: centroid_homfold.cwl
inputs:
- id: h
  doc: '[ --homologous ] arg fasta file containing homologous sequences (REQUIRED)'
  type: boolean
  inputBinding:
    prefix: -H
- id: engine_s
  doc: 'specify the inference engine for secondary structures (default: "McCaskill")'
  type: string
  inputBinding:
    prefix: --engine_s
- id: engine_a
  doc: 'specify the inference engine for pairwise alignments  (default: "CONTRAlign")'
  type: string
  inputBinding:
    prefix: --engine_a
- id: g
  doc: '[ --gamma ] arg      weight of base pairs'
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: "[ --threshold ] arg  thereshold of base pairs (this option overwrites  'gamma')"
  type: boolean
  inputBinding:
    prefix: -t
- id: ea
  doc: compute (pseudo-)expected accuracy
  type: boolean
  inputBinding:
    prefix: --ea
- id: o
  doc: '[ --output ] arg     specify filename to output predicted secondary  structures.
    If empty, use the standard output.'
  type: boolean
  inputBinding:
    prefix: -o
- id: posteriors
  doc: output base-pairing probability matrices which  contain base-pairing probabilities
    more than the  given value.
  type: string
  inputBinding:
    prefix: --posteriors
- id: o_posteriors
  doc: specify filename to output base-pairing probability  matrices. If empty, use
    the standard output.
  type: string
  inputBinding:
    prefix: --oposteriors
- id: postscript
  doc: draw predicted secondary structures with the  postscript (PS) format
  type: string
  inputBinding:
    prefix: --postscript
- id: params
  doc: use the parameter file
  type: string
  inputBinding:
    prefix: --params
outputs: []
cwlVersion: v1.1
baseCommand:
- centroid_homfold
