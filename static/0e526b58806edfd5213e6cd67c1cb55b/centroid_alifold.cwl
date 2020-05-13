class: CommandLineTool
id: centroid_alifold.cwl
inputs:
- id: e
  doc: '[ --engine ] arg     specify the inference engine (default: "McCaskill &  Alifold")'
  type: boolean
  inputBinding:
    prefix: -e
- id: w
  doc: '[ --mixture ] arg    mixture weights of inference engines'
  type: boolean
  inputBinding:
    prefix: -w
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
  doc: 'compute (pseudo-)expected accuracy (pseudo if arg==0, sampling if arg>0; arg:
    # of sampling)'
  type: string
  inputBinding:
    prefix: --ea
- id: max_mcc
  doc: 'predict secondary structure by maximizing  pseudo-expected MCC (arg: # of
    sampling)'
  type: string
  inputBinding:
    prefix: --max-mcc
- id: me_a
  doc: run as an MEA estimator
  type: boolean
  inputBinding:
    prefix: --mea
- id: noncanonical
  doc: allow non-canonical base-pairs
  type: boolean
  inputBinding:
    prefix: --noncanonical
- id: c
  doc: '[ --constraints ]    use structure constraints'
  type: boolean
  inputBinding:
    prefix: -C
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
- id: posteriors_output
  doc: specify filename to output base-pairing probability  matrices. If empty, use
    the standard output.
  type: string
  inputBinding:
    prefix: --posteriors-output
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
- id: d
  doc: '[ --max-dist ] arg (=0) the maximum distance of base-pairs'
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: '[ --sampling ] arg           specify the number of samples to be generated
    for each sequence'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: '[ --max-clusters ] arg (=10) the maximum number of clusters for the  stochastic
    sampling algorithm'
  type: boolean
  inputBinding:
    prefix: -c
- id: seed
  doc: (=0)                 specify the seed for the random number  generator (set
    this automatically if seed=0)
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- centroid_alifold
