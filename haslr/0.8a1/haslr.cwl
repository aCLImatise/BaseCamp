class: CommandLineTool
id: haslr.py.cwl
inputs:
- id: out
  doc: output directory
  type: string
  inputBinding:
    prefix: --out
- id: genome
  doc: estimated genome size; accepted suffixes are k,m,g
  type: string
  inputBinding:
    prefix: --genome
- id: long
  doc: long read file
  type: string
  inputBinding:
    prefix: --long
- id: type
  doc: type of long reads chosen from {pacbio,nanopore}
  type: string
  inputBinding:
    prefix: --type
- id: short
  doc: short read file
  type: string[]
  inputBinding:
    prefix: --short
- id: threads
  doc: number of CPU threads to use [1]
  type: string
  inputBinding:
    prefix: --threads
- id: cov_lr
  doc: amount of long read coverage to use for assembly [25]
  type: string
  inputBinding:
    prefix: --cov-lr
- id: aln_block
  doc: minimum length of alignment block [500]
  type: string
  inputBinding:
    prefix: --aln-block
- id: aln_sim
  doc: minimum alignment similarity [0.85]
  type: string
  inputBinding:
    prefix: --aln-sim
- id: edge_sup
  doc: minimum number of long read supporting each edge [3]
  type: string
  inputBinding:
    prefix: --edge-sup
- id: mini_a_km_er
  doc: kmer size used by minia [49]
  type: long
  inputBinding:
    prefix: --minia-kmer
- id: mini_a_solid
  doc: minimum kmer abundance used by minia [3]
  type: long
  inputBinding:
    prefix: --minia-solid
- id: mini_a_asm
  doc: type of minia assembly chosen from {contigs,unitigs} [contigs]
  type: long
  inputBinding:
    prefix: --minia-asm
outputs: []
cwlVersion: v1.1
baseCommand:
- haslr.py
