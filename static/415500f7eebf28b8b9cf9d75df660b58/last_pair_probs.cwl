class: CommandLineTool
id: last_pair_probs.cwl
inputs:
- id: rna
  doc: assume the reads are from potentially-spliced RNA
  type: boolean
  inputBinding:
    prefix: --rna
- id: est_dist
  doc: just estimate the distribution of distances
  type: boolean
  inputBinding:
    prefix: --estdist
- id: mis_map
  doc: "don't write alignments with mismap probability > M (default: 0.01)"
  type: string
  inputBinding:
    prefix: --mismap
- id: fra_glen
  doc: mean distance in bp
  type: string
  inputBinding:
    prefix: --fraglen
- id: sdev
  doc: standard deviation of distance
  type: string
  inputBinding:
    prefix: --sdev
- id: disjoint
  doc: 'prior probability of disjoint mapping (default: 0.02 if -r, else 0.01)'
  type: string
  inputBinding:
    prefix: --disjoint
- id: circular
  doc: 'specifies that chromosome CHROM is circular (default: chrM)'
  type: string
  inputBinding:
    prefix: --circular
outputs: []
cwlVersion: v1.1
baseCommand:
- last-pair-probs
