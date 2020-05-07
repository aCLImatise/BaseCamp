class: CommandLineTool
id: postprocess_predictions.cwl
inputs:
- id: d
  doc: Minimum expected support for deletion cliques (cliques with lower support are
    discarded).
  type: long
  inputBinding:
    prefix: -d
- id: i
  doc: Minimum expected support for insertion cliques (cliques with lower support
    are discarded).
  type: long
  inputBinding:
    prefix: -i
- id: cov_bal
  doc: 'Minimum coverage balance (=support/coverage). Filter is applied after merging
    (default: disabled).'
  type: string
  inputBinding:
    prefix: --covbal
- id: c
  doc: Minimum coverage at clique center.
  type: long
  inputBinding:
    prefix: -c
- id: c
  doc: Minimum individual coverage at clique center, that is, only cliques are retains
    for which ALL individuals have at least the given coverage.
  type: long
  inputBinding:
    prefix: -C
- id: r
  doc: Re-evaluate which cliques lead to which sets of individuals (requires standard
    deviation to be given).
  type: boolean
  inputBinding:
    prefix: -R
- id: stddev
  doc: Standard deviation of insert size (necessary for some options).
  type: string
  inputBinding:
    prefix: --stddev
- id: s
  doc: 'Also store output in separate files for each sample. Parameter: prefix of
    filenames for samplewise output.'
  type: string
  inputBinding:
    prefix: -S
- id: n
  doc: Filename to read samplenames from.
  type: string
  inputBinding:
    prefix: -N
- id: only_del
  doc: Only process deletions.
  type: boolean
  inputBinding:
    prefix: --only-del
- id: only_ins
  doc: Only process insertions.
  type: boolean
  inputBinding:
    prefix: --only-ins
- id: vcf
  doc: Output VCF format.
  type: boolean
  inputBinding:
    prefix: --vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- postprocess-predictions
