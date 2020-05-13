class: CommandLineTool
id: _cmfinder.pl.cwl
inputs:
- id: b
  doc: Do not use BLAST search to locate anchors
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: The maximum number of candidates in each sequence. Default 40. No bigger than
    100.
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: The minimum length of candidates. Default 30
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: The maximum length of candidates. Default 100
  type: string
  inputBinding:
    prefix: -M
- id: f
  doc: The fraction of the sequences expected to contain the motif. Default 0.80
  type: string
  inputBinding:
    prefix: -f
- id: s1
  doc: The max number of output single stem-loop motifs
  type: string
  inputBinding:
    prefix: -s1
- id: s2
  doc: 'The max number of output double stem-loop motifs    '
  type: string
  inputBinding:
    prefix: -s2
- id: combine
  doc: Combine the output motifs. Default False
  type: boolean
  inputBinding:
    prefix: -combine
- id: hmm
  doc: Apply HMM filter for speed up. Default false.
  type: boolean
  inputBinding:
    prefix: -hmm
- id: anchor
  doc: '[FASTA|BLAST|NONE]      Methods to compute the anchors    '
  type: boolean
  inputBinding:
    prefix: -anchor
outputs: []
cwlVersion: v1.1
baseCommand:
- _cmfinder.pl
