#!/usr/bin/env cwl-runner

baseCommand:
- haslr.py
class: CommandLineTool
cwlVersion: v1.0
id: haslr.py
inputs:
- doc: output directory
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: estimated genome size; accepted suffixes are k,m,g
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: long read file
  id: long
  inputBinding:
    prefix: --long
  type: string
- doc: type of long reads chosen from {pacbio,nanopore}
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: short read file
  id: short
  inputBinding:
    prefix: --short
  type:
    items: string
    type: array
- doc: number of CPU threads to use [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: amount of long read coverage to use for assembly [25]
  id: cov_lr
  inputBinding:
    prefix: --cov-lr
  type: string
- doc: minimum length of alignment block [500]
  id: aln_block
  inputBinding:
    prefix: --aln-block
  type: string
- doc: minimum alignment similarity [0.85]
  id: aln_sim
  inputBinding:
    prefix: --aln-sim
  type: string
- doc: minimum number of long read supporting each edge [3]
  id: edge_sup
  inputBinding:
    prefix: --edge-sup
  type: string
- doc: kmer size used by minia [49]
  id: mini_a_km_er
  inputBinding:
    prefix: --minia-kmer
  type: long
- doc: minimum kmer abundance used by minia [3]
  id: mini_a_solid
  inputBinding:
    prefix: --minia-solid
  type: long
- doc: type of minia assembly chosen from {contigs,unitigs} [contigs]
  id: mini_a_asm
  inputBinding:
    prefix: --minia-asm
  type: long
