#!/usr/bin/env cwl-runner

baseCommand:
- csb-bfite
class: CommandLineTool
cwlVersion: v1.0
id: csb-bfite
inputs:
- doc: full path to the ensemble
  id: pdb
  inputBinding:
    position: 0
  type: string
- doc: Chain (default=A)
  id: chain
  inputBinding:
    prefix: --chain
  type: string
- doc: Scale mixture distribution (default=student)
  id: scale_mixture
  inputBinding:
    prefix: --scalemixture
  type: string
- doc: Alignment in fasta format defining equivalent positions Assumes that chain1
    is the first sequence of the alignment and chain2 the second sequence
  id: alignment
  inputBinding:
    prefix: --alignment
  type: string
- doc: file to which the rotated second structure will be written (default=bfit.pdb)
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: Number of optimization steps (default=200)
  id: niter
  inputBinding:
    prefix: --niter
  type: string
