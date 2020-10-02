class: CommandLineTool
id: csb_bfite.cwl
inputs:
- id: in_chain
  doc: Chain (default=A)
  type: string
  inputBinding:
    prefix: --chain
- id: in_scale_mixture
  doc: Scale mixture distribution (default=student)
  type: string
  inputBinding:
    prefix: --scalemixture
- id: in_alignment
  doc: "Alignment in fasta format defining equivalent\npositions Assumes that chain1\
    \ is the first sequence of\nthe alignment and chain2 the second sequence"
  type: long
  inputBinding:
    prefix: --alignment
- id: in_outfile
  doc: "file to which the rotated second structure will be\nwritten (default=bfit.pdb)"
  type: File
  inputBinding:
    prefix: --outfile
- id: in_niter
  doc: "Number of optimization steps (default=200)\n"
  type: long
  inputBinding:
    prefix: --niter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- csb-bfite
