class: CommandLineTool
id: extract_sam.cwl
inputs:
- id: msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
- id: t
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: Print more information (such as subsequences in references)
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output FASTA file
  type: string
  inputBinding:
    prefix: -o
- id: mf
  doc: Minimum frequency to output
  type: double
  inputBinding:
    prefix: --mf
- id: mc
  doc: Minimum count to output
  type: long
  inputBinding:
    prefix: --mc
- id: prefix
  doc: Prefix to add to header
  type: string
  inputBinding:
    prefix: --prefix
- id: rg
  doc: Minimum frequency for gap containing sequences
  type: double
  inputBinding:
    prefix: --rg
- id: rog
  doc: Remove sequences consisting only of gaps and stop codons
  type: boolean
  inputBinding:
    prefix: --rog
- id: p
  doc: Output sequences as translated proteins
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: Output sequences in trait format (for SeTesT)
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_sam
