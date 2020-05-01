#!/usr/bin/env cwl-runner

baseCommand:
- csb-bfit
class: CommandLineTool
cwlVersion: v1.0
id: csb-bfit
inputs:
- doc: full path to the first structure
  id: pdb1
  inputBinding:
    position: 0
  type: string
- doc: full path to the second structure
  id: pdb2
  inputBinding:
    position: 1
  type: string
- doc: Chain of the first structure (default=A)
  id: chain_1
  inputBinding:
    prefix: --chain1
  type: string
- doc: Chain of the second structure (default=A)
  id: chain_2
  inputBinding:
    prefix: --chain2
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
- doc: Use the EM algorithm for optimsation (default=False)
  id: em
  inputBinding:
    prefix: --em
  type: boolean
