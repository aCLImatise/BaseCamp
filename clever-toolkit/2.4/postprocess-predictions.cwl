#!/usr/bin/env cwl-runner

baseCommand:
- postprocess-predictions
class: CommandLineTool
cwlVersion: v1.0
id: postprocess-predictions
inputs:
- doc: Minimum expected support for deletion cliques (cliques with lower support are
    discarded).
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: Minimum expected support for insertion cliques (cliques with lower support
    are discarded).
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: 'Minimum coverage balance (=support/coverage). Filter is applied after merging
    (default: disabled).'
  id: cov_bal
  inputBinding:
    prefix: --covbal
  type: string
- doc: Minimum coverage at clique center.
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: Minimum individual coverage at clique center, that is, only cliques are retains
    for which ALL individuals have at least the given coverage.
  id: c
  inputBinding:
    prefix: -C
  type: long
- doc: Re-evaluate which cliques lead to which sets of individuals (requires standard
    deviation to be given).
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: Standard deviation of insert size (necessary for some options).
  id: stddev
  inputBinding:
    prefix: --stddev
  type: string
- doc: 'Also store output in separate files for each sample. Parameter: prefix of
    filenames for samplewise output.'
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: Filename to read samplenames from.
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: Only process deletions.
  id: only_del
  inputBinding:
    prefix: --only-del
  type: boolean
- doc: Only process insertions.
  id: only_ins
  inputBinding:
    prefix: --only-ins
  type: boolean
- doc: Output VCF format.
  id: vcf
  inputBinding:
    prefix: --vcf
  type: boolean
