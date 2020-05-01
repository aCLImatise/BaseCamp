#!/usr/bin/env cwl-runner

baseCommand:
- haslr_assemble
class: CommandLineTool
cwlVersion: v1.0
id: haslr_assemble
inputs:
- doc: ''
  id: detects_v
  inputBinding:
    position: 0
  type: string
- doc: Path to contigs file (also --contig)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Path to long read dataset (also --long)
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Path to mappings of long reads onto contigs (also --mapping)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Path to the output directory (also --dir)
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: Minimum length of alignment block [500]
  id: aln_block
  inputBinding:
    prefix: --aln-block
  type: boolean
- doc: Minimum alignment similarity [0.85]
  id: aln_sim
  inputBinding:
    prefix: --aln-sim
  type: boolean
- doc: Maximum deviation from mean frequency of uniq contigs [0.15]
  id: uniq_dev
  inputBinding:
    prefix: --uniq-dev
  type: boolean
- doc: Minimum number of long read supporting each edge [3]
  id: edge_sup
  inputBinding:
    prefix: --edge-sup
  type: boolean
- doc: Number of CPU cores to use (also --threads)
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: The file passed by -l is fofn
  id: long_fof_n
  inputBinding:
    prefix: --long-fofn
  type: boolean
- doc: The file passed by -m is fofn
  id: mapping_fof_n
  inputBinding:
    prefix: --mapping-fofn
  type: boolean
