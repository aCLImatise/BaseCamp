class: CommandLineTool
id: prequel.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tree_mod
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_root
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: refseq
  doc: (for use with --msa-format MAF) Read the complete text of the reference sequence
    from <fname> (FASTA format) and combine it with the contents of the MAF file to
    produce a complete, ordered representation of the alignment.  The reference sequence
    of the MAF file is assumed to be the one that appears first in each block.
  type: string
  inputBinding:
    prefix: --refseq
- id: gibbs
  doc: (experimental) Estimate posterior probabilities by Gibbs sampling rather than
    by the sum-product algorithm.  Sample each sequence <nsamples> times and estimate
    posterior probabilities as fraction of times each base appeared at each position.  This
    option is used by default if a dinucleotide or trinucleotide model is given (exact
    inference not possible).   NOT YET IMPLEMENTED
  type: string
  inputBinding:
    prefix: --gibbs
outputs: []
cwlVersion: v1.1
baseCommand:
- prequel
