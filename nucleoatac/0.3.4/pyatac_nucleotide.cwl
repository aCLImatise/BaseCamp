class: CommandLineTool
id: pyatac_nucleotide.cwl
inputs:
- id: fast_a
  doc: Accepts fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: bed
  doc: Positions around which to get nucleotide frequencies
  type: string
  inputBinding:
    prefix: --bed
- id: dinucleotide
  doc: Compute dinucleotide frequencies instead of single nucleotide
  type: boolean
  inputBinding:
    prefix: --dinucleotide
- id: up
  doc: Bases upstream of site to get frequencies for
  type: long
  inputBinding:
    prefix: --up
- id: down
  doc: Bases downstream of site to get frequencies for
  type: long
  inputBinding:
    prefix: --down
- id: strand
  doc: Column in bedfile with strand info (1-based)
  type: long
  inputBinding:
    prefix: --strand
- id: out
  doc: Basename for output
  type: string
  inputBinding:
    prefix: --out
- id: cores
  doc: number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: norm
  doc: Normalize by background frequencies
  type: boolean
  inputBinding:
    prefix: --norm
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- nucleotide
