class: CommandLineTool
id: sim4db.cwl
inputs:
- id: no_def_lines
  doc: don't include the defline in the output
  type: boolean
  inputBinding:
    prefix: -nodeflines
- id: alignments
  doc: print alignments
  type: boolean
  inputBinding:
    prefix: -alignments
- id: poly_tails
  doc: DON'T mask poly-A and poly-T tails.
  type: boolean
  inputBinding:
    prefix: -polytails
- id: cut
  doc: Trim marginal exons if A/T % > x (poly-AT tails)
  type: boolean
  inputBinding:
    prefix: -cut
- id: noncanonical
  doc: "'t force canonical splice sites"
  type: string
  inputBinding:
    prefix: -noncanonical
- id: splice_model
  doc: 'Use the following splice model: 0 - original sim4; 1 - GeneSplicer; 2 - Glimmer
    (default: 0)'
  type: boolean
  inputBinding:
    prefix: -splicemodel
- id: force_strand
  doc: Force the strand prediction to always be 'forward' or 'reverse'
  type: boolean
  inputBinding:
    prefix: -forcestrand
- id: interspecies
  doc: sim4cc for inter-species alignments
  type: string
  inputBinding:
    prefix: -interspecies
- id: z
  doc: set the (spaced) seed pattern
  type: boolean
  inputBinding:
    prefix: -Z
- id: h
  doc: set the relink weight factor
  type: boolean
  inputBinding:
    prefix: -H
- id: k
  doc: set the first MSP threshold
  type: boolean
  inputBinding:
    prefix: -K
- id: c
  doc: set the second MSP threshold
  type: boolean
  inputBinding:
    prefix: -C
- id: ma
  doc: set the limit of the number of MSPs allowed
  type: boolean
  inputBinding:
    prefix: -Ma
- id: mp
  doc: 'same, as percentage of bases in cDNA NOTE:  If used, both -Ma and -Mp must
    be specified!'
  type: boolean
  inputBinding:
    prefix: -Mp
outputs: []
cwlVersion: v1.1
baseCommand:
- sim4db
