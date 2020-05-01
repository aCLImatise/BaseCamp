#!/usr/bin/env cwl-runner

baseCommand:
- longest_path
class: CommandLineTool
cwlVersion: v1.0
id: longest_path
inputs:
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Output file
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Write an overlap graph (dot file)
  id: dot
  inputBinding:
    prefix: --dot
  type: File
- doc: Play in overlap length between position and k-unitig lengths (1.3)
  id: overlap_play
  inputBinding:
    prefix: --overlap-play
  type: string
- doc: Number of average errors slack for overlap computation (3.0)
  id: errors
  inputBinding:
    prefix: --errors
  type: string
- doc: Maximize number of bases in path, not the number of mers (false)
  id: bases
  inputBinding:
    prefix: --bases
  type: boolean
- doc: Length of k-unitigs
  id: unit_igs_lengths
  inputBinding:
    prefix: --unitigs-lengths
  type: File
- doc: Fasta file containing the sequence of the k-unitigs
  id: unit_igs_sequences
  inputBinding:
    prefix: --unitigs-sequences
  type: File
- doc: '*Length of k-mer used to create k-unitigs'
  id: k_mer
  inputBinding:
    prefix: --k-mer
  type: string
- doc: Minimum density of k-mers (0.029)
  id: density
  inputBinding:
    prefix: --density
  type: string
- doc: Minimum length of a mega-read (100.0)
  id: min_length
  inputBinding:
    prefix: --min-length
  type: string
- doc: '|greedy|maximal         Option for tiling mega-reads (greedy)'
  id: tiling
  inputBinding:
    prefix: --tiling
  type: string
- doc: '|match|branch             How to trim mega-read (none)'
  id: trim
  inputBinding:
    prefix: --trim
  type: string
