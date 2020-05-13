class: CommandLineTool
id: tantan.cwl
inputs:
- id: p
  doc: interpret the sequences as proteins
  type: boolean
  inputBinding:
    prefix: -p
- id: x
  doc: letter to use for masking, instead of lowercase
  type: boolean
  inputBinding:
    prefix: -x
- id: c
  doc: preserve uppercase/lowercase in non-masked regions
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: file for letter pair scores (+1/-1, but -p selects BLOSUM62)
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: probability of a repeat starting per position (0.005)
  type: boolean
  inputBinding:
    prefix: -r
- id: e
  doc: probability of a repeat ending per position (0.05)
  type: boolean
  inputBinding:
    prefix: -e
- id: w
  doc: maximum tandem repeat period to consider (100, but -p selects 50)
  type: boolean
  inputBinding:
    prefix: -w
- id: d
  doc: probability decay per period (0.9)
  type: boolean
  inputBinding:
    prefix: -d
- id: a
  doc: gap existence cost (0)
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: 'gap extension cost (infinite: no gaps)'
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: minimum repeat probability for masking (0.5)
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: 'output type: 0=masked sequence, 1=repeat probabilities, 2=repeat counts, 3=BED
    (0)'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- tantan
