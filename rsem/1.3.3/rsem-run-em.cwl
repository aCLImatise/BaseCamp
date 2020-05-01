#!/usr/bin/env cwl-runner

baseCommand:
- rsem-run-em
class: CommandLineTool
cwlVersion: v1.0
id: rsem-run-em
inputs:
- doc: ': number of threads which user wants to use. (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': produce bam format output file. (default: off)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': set it quiet'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': generate output file used by Gibbs sampler. (default: off)'
  id: gibbs_out
  inputBinding:
    prefix: --gibbs-out
  type: boolean
- doc: ': sample each read from its posterior distribution when BAM file is generated.
    (default: off)'
  id: sampling
  inputBinding:
    prefix: --sampling
  type: boolean
- doc: ': the seed used for the BAM sampling. (default: off)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': append transcript_name/gene_name when available. (default: off)'
  id: append_names
  inputBinding:
    prefix: --append-names
  type: boolean
