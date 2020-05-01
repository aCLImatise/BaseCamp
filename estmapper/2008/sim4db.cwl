#!/usr/bin/env cwl-runner

baseCommand:
- sim4db
class: CommandLineTool
cwlVersion: v1.0
id: sim4db
inputs:
- doc: don't include the defline in the output
  id: no_def_lines
  inputBinding:
    prefix: -nodeflines
  type: boolean
- doc: print alignments
  id: alignments
  inputBinding:
    prefix: -alignments
  type: boolean
- doc: DON'T mask poly-A and poly-T tails.
  id: poly_tails
  inputBinding:
    prefix: -polytails
  type: boolean
- doc: Trim marginal exons if A/T % > x (poly-AT tails)
  id: cut
  inputBinding:
    prefix: -cut
  type: boolean
- doc: "'t force canonical splice sites"
  id: noncanonical
  inputBinding:
    prefix: -noncanonical
  type: string
- doc: 'Use the following splice model: 0 - original sim4; 1 - GeneSplicer; 2 - Glimmer
    (default: 0)'
  id: splice_model
  inputBinding:
    prefix: -splicemodel
  type: boolean
- doc: Force the strand prediction to always be 'forward' or 'reverse'
  id: force_strand
  inputBinding:
    prefix: -forcestrand
  type: boolean
- doc: sim4cc for inter-species alignments
  id: interspecies
  inputBinding:
    prefix: -interspecies
  type: string
- doc: set the (spaced) seed pattern
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: set the relink weight factor
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: set the first MSP threshold
  id: k
  inputBinding:
    prefix: -K
  type: boolean
- doc: set the second MSP threshold
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: set the limit of the number of MSPs allowed
  id: ma
  inputBinding:
    prefix: -Ma
  type: boolean
- doc: 'same, as percentage of bases in cDNA NOTE:  If used, both -Ma and -Mp must
    be specified!'
  id: mp
  inputBinding:
    prefix: -Mp
  type: boolean
