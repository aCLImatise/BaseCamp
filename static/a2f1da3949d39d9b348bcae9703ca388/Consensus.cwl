class: CommandLineTool
id: Consensus.cwl
inputs:
- id: contig
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: write the output FASTA file to OUTPUT
  type: string
  inputBinding:
    prefix: --out
- id: pile_up
  doc: write the pileup to PILEUP
  type: string
  inputBinding:
    prefix: --pileup
- id: nt
  doc: output nucleotide contigs [default]
  type: boolean
  inputBinding:
    prefix: --nt
- id: cs
  doc: output colour-space contigs
  type: boolean
  inputBinding:
    prefix: --cs
- id: variants
  doc: print only variants in the pileup
  type: boolean
  inputBinding:
    prefix: --variants
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- Consensus
