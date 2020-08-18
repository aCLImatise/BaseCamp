class: CommandLineTool
id: ../../../csb_bfit.cwl
inputs:
- id: chain_one
  doc: Chain of the first structure (default=A)
  type: string
  inputBinding:
    prefix: --chain1
- id: chain_two
  doc: Chain of the second structure (default=A)
  type: string
  inputBinding:
    prefix: --chain2
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
- id: em
  doc: Use the EM algorithm for optimsation (default=False)
  type: boolean
  inputBinding:
    prefix: --em
- id: pdb_one
  doc: full path to the first structure
  type: string
  inputBinding:
    position: 0
- id: pdb_two
  doc: full path to the second structure
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-bfit
