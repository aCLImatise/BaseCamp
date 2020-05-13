class: CommandLineTool
id: csb_bfite.cwl
inputs:
- id: pdb
  doc: full path to the ensemble
  type: string
  inputBinding:
    position: 0
- id: chain
  doc: Chain (default=A)
  type: string
  inputBinding:
    prefix: --chain
- id: scale_mixture
  doc: Scale mixture distribution (default=student)
  type: string
  inputBinding:
    prefix: --scalemixture
- id: alignment
  doc: Alignment in fasta format defining equivalent positions Assumes that chain1
    is the first sequence of the alignment and chain2 the second sequence
  type: string
  inputBinding:
    prefix: --alignment
- id: outfile
  doc: file to which the rotated second structure will be written (default=bfit.pdb)
  type: string
  inputBinding:
    prefix: --outfile
- id: niter
  doc: Number of optimization steps (default=200)
  type: string
  inputBinding:
    prefix: --niter
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-bfite
