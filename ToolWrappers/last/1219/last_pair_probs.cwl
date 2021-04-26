class: CommandLineTool
id: last_pair_probs.cwl
inputs:
- id: in_rna
  doc: assume the reads are from potentially-spliced RNA
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_est_dist
  doc: just estimate the distribution of distances
  type: boolean?
  inputBinding:
    prefix: --estdist
- id: in_mis_map
  doc: "don't write alignments with mismap probability > M\n(default: 0.01)"
  type: double?
  inputBinding:
    prefix: --mismap
- id: in_fra_glen
  doc: mean distance in bp
  type: string?
  inputBinding:
    prefix: --fraglen
- id: in_sdev
  doc: standard deviation of distance
  type: string?
  inputBinding:
    prefix: --sdev
- id: in_disjoint
  doc: "prior probability of disjoint mapping (default: 0.02\nif -r, else 0.01)"
  type: double?
  inputBinding:
    prefix: --disjoint
- id: in_circular
  doc: "specifies that chromosome CHROM is circular (default:\nchrM)"
  type: string?
  inputBinding:
    prefix: --circular
- id: in_alignments_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- last-pair-probs
