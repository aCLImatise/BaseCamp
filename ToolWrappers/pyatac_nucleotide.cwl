class: CommandLineTool
id: pyatac_nucleotide.cwl
inputs:
- id: in_fast_a
  doc: Accepts fasta file
  type: File
  inputBinding:
    prefix: --fasta
- id: in_bed
  doc: Positions around which to get nucleotide frequencies
  type: File
  inputBinding:
    prefix: --bed
- id: in_dinucleotide
  doc: Compute dinucleotide frequencies instead of single
  type: boolean
  inputBinding:
    prefix: --dinucleotide
- id: in_down
  doc: Bases downstream of site to get frequencies for
  type: long
  inputBinding:
    prefix: --down
- id: in_strand
  doc: Column in bedfile with strand info (1-based)
  type: long
  inputBinding:
    prefix: --strand
- id: in_out
  doc: Basename for output
  type: string
  inputBinding:
    prefix: --out
- id: in_cores
  doc: number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: in_norm
  doc: Normalize by background frequencies
  type: boolean
  inputBinding:
    prefix: --norm
- id: in_nucleotide
  doc: --up int              Bases upstream of site to get frequencies for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyatac
- nucleotide
