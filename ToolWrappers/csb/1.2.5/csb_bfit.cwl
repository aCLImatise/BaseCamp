class: CommandLineTool
id: csb_bfit.cwl
inputs:
- id: in_chain_one
  doc: Chain of the first structure (default=A)
  type: long?
  inputBinding:
    prefix: --chain1
- id: in_chain_two
  doc: Chain of the second structure (default=A)
  type: long?
  inputBinding:
    prefix: --chain2
- id: in_scale_mixture
  doc: Scale mixture distribution (default=student)
  type: string?
  inputBinding:
    prefix: --scalemixture
- id: in_alignment
  doc: "Alignment in fasta format defining equivalent\npositions Assumes that chain1\
    \ is the first sequence of\nthe alignment and chain2 the second sequence"
  type: long?
  inputBinding:
    prefix: --alignment
- id: in_outfile
  doc: "file to which the rotated second structure will be\nwritten (default=bfit.pdb)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_niter
  doc: Number of optimization steps (default=200)
  type: long?
  inputBinding:
    prefix: --niter
- id: in_em
  doc: Use the EM algorithm for optimsation (default=False)
  type: boolean?
  inputBinding:
    prefix: --em
- id: in_pdb_one
  doc: full path to the first structure
  type: long
  inputBinding:
    position: 0
- id: in_pdb_two
  doc: full path to the second structure
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- csb-bfit
