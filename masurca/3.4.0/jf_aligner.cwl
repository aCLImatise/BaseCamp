#!/usr/bin/env cwl-runner

baseCommand:
- jf_aligner
class: CommandLineTool
cwlVersion: v1.0
id: jf_aligner
inputs:
- doc: ''
  id: jf_aligner_cmdline
  inputBinding:
    position: 0
  type: string
- doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  id: psa_min
  inputBinding:
    prefix: --psa-min
  type: string
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Constant tolerated stretch between matching k-mer in LIS (10)
  id: stretch_constant
  inputBinding:
    prefix: --stretch-constant
  type: long
- doc: Factor tolerated stretch between matching k-mer in LIS (1.3)
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
- doc: Show all matches forward (reverse super read name if needed) (false)
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
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
- doc: Output files with detail k-mer information
  id: details
  inputBinding:
    prefix: --details
  type: File
- doc: Output files with math coordinate information (stdout)
  id: coords
  inputBinding:
    prefix: --coords
  type: File
- doc: Output secondary matches (false)
  id: max_match
  inputBinding:
    prefix: --max-match
  type: boolean
- doc: Do not output header (false)
  id: no_header
  inputBinding:
    prefix: --no-header
  type: boolean
- doc: Maximum mer count in super read to be used for alignment (5000)
  id: max_count
  inputBinding:
    prefix: --max-count
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
- doc: Compact output format (true)
  id: compact
  inputBinding:
    prefix: --compact
  type: boolean
- doc: Length of k-mer used to create k-unitigs
  id: k_mer
  inputBinding:
    prefix: --k-mer
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
