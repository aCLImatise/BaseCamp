#!/usr/bin/env cwl-runner

baseCommand:
- create_mega_reads
class: CommandLineTool
cwlVersion: v1.0
id: create_mega_reads
inputs:
- doc: ''
  id: create_mega_reads_cmdline
  inputBinding:
    position: 0
  type: string
- doc: '*Number of k-mers in SuperReads'
  id: size
  inputBinding:
    prefix: --size
  type: string
- doc: '*Mer size'
  id: mer
  inputBinding:
    prefix: --mer
  type: string
- doc: Mer size for fine alignment
  id: fine_mer
  inputBinding:
    prefix: --fine-mer
  type: string
- doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  id: psa_min
  inputBinding:
    prefix: --psa-min
  type: string
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
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Output file (stdout)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Write an overlap graph (dot file)
  id: dot
  inputBinding:
    prefix: --dot
  type: File
- doc: Constant tolerated stretch between sequences (10)
  id: stretch_constant
  inputBinding:
    prefix: --stretch-constant
  type: long
- doc: Factor tolerated stretch between sequences (1.3)
  id: stretch_factor
  inputBinding:
    prefix: --stretch-factor
  type: string
- doc: Maximum distance between two consecutive k-mers in LIS (10000.0)
  id: stretch_cap
  inputBinding:
    prefix: --stretch-cap
  type: string
- doc: Check stretch on every window of k-mer this size (1)
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
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
- doc: Filter base on percent of bases matching (17.0)
  id: bases_matching
  inputBinding:
    prefix: --bases-matching
  type: string
- doc: Filter base on percent of k-mer matching (0.0)
  id: mers_matching
  inputBinding:
    prefix: --mers-matching
  type: string
- doc: Use secondary matches (false)
  id: max_match
  inputBinding:
    prefix: --max-match
  type: boolean
- doc: Maximum mer count in super read to be used for alignment (5000)
  id: max_count
  inputBinding:
    prefix: --max-count
  type: string
- doc: Maximize number of bases in path, not the number of mers (false)
  id: bases
  inputBinding:
    prefix: --bases
  type: boolean
- doc: Minimum density of k-mers in mega-read (0.029)
  id: density
  inputBinding:
    prefix: --density
  type: string
- doc: Minimum length of a mega-read (100.0)
  id: min_length
  inputBinding:
    prefix: --min-length
  type: string
- doc: '|greedy|maximal|weighted Option for tiling mega-reads (greedy)'
  id: tiling
  inputBinding:
    prefix: --tiling
  type: string
- doc: '|match|branch             How to trim mega-read (none)'
  id: trim
  inputBinding:
    prefix: --trim
  type: string
- doc: SuperReads sequence file
  id: super_reads
  inputBinding:
    prefix: --superreads
  type: File
- doc: PacBio read sequence file
  id: pac_bio
  inputBinding:
    prefix: --pacbio
  type: File
