#!/usr/bin/env cwl-runner

baseCommand:
- last-pair-probs
class: CommandLineTool
cwlVersion: v1.0
id: last-pair-probs
inputs:
- doc: assume the reads are from potentially-spliced RNA
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: just estimate the distribution of distances
  id: est_dist
  inputBinding:
    prefix: --estdist
  type: boolean
- doc: "don't write alignments with mismap probability > M (default: 0.01)"
  id: mis_map
  inputBinding:
    prefix: --mismap
  type: string
- doc: mean distance in bp
  id: fra_glen
  inputBinding:
    prefix: --fraglen
  type: string
- doc: standard deviation of distance
  id: sdev
  inputBinding:
    prefix: --sdev
  type: string
- doc: 'prior probability of disjoint mapping (default: 0.02 if -r, else 0.01)'
  id: disjoint
  inputBinding:
    prefix: --disjoint
  type: string
- doc: 'specifies that chromosome CHROM is circular (default: chrM)'
  id: circular
  inputBinding:
    prefix: --circular
  type: string
