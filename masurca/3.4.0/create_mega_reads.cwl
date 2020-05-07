class: CommandLineTool
id: create_mega_reads.cwl
inputs:
- id: create_mega_reads_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: size
  doc: '*Number of k-mers in SuperReads'
  type: string
  inputBinding:
    prefix: --size
- id: mer
  doc: '*Mer size'
  type: string
  inputBinding:
    prefix: --mer
- id: fine_mer
  doc: Mer size for fine alignment
  type: string
  inputBinding:
    prefix: --fine-mer
- id: psa_min
  doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  type: string
  inputBinding:
    prefix: --psa-min
- id: unit_igs_lengths
  doc: Length of k-unitigs
  type: File
  inputBinding:
    prefix: --unitigs-lengths
- id: unit_igs_sequences
  doc: Fasta file containing the sequence of the k-unitigs
  type: File
  inputBinding:
    prefix: --unitigs-sequences
- id: k_mer
  doc: '*Length of k-mer used to create k-unitigs'
  type: string
  inputBinding:
    prefix: --k-mer
- id: threads
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: dot
  doc: Write an overlap graph (dot file)
  type: File
  inputBinding:
    prefix: --dot
- id: stretch_constant
  doc: Constant tolerated stretch between sequences (10)
  type: long
  inputBinding:
    prefix: --stretch-constant
- id: stretch_factor
  doc: Factor tolerated stretch between sequences (1.3)
  type: string
  inputBinding:
    prefix: --stretch-factor
- id: stretch_cap
  doc: Maximum distance between two consecutive k-mers in LIS (10000.0)
  type: string
  inputBinding:
    prefix: --stretch-cap
- id: window_size
  doc: Check stretch on every window of k-mer this size (1)
  type: string
  inputBinding:
    prefix: --window-size
- id: overlap_play
  doc: Play in overlap length between position and k-unitig lengths (1.3)
  type: string
  inputBinding:
    prefix: --overlap-play
- id: errors
  doc: Number of average errors slack for overlap computation (3.0)
  type: string
  inputBinding:
    prefix: --errors
- id: bases_matching
  doc: Filter base on percent of bases matching (17.0)
  type: string
  inputBinding:
    prefix: --bases-matching
- id: mers_matching
  doc: Filter base on percent of k-mer matching (0.0)
  type: string
  inputBinding:
    prefix: --mers-matching
- id: max_match
  doc: Use secondary matches (false)
  type: boolean
  inputBinding:
    prefix: --max-match
- id: max_count
  doc: Maximum mer count in super read to be used for alignment (5000)
  type: string
  inputBinding:
    prefix: --max-count
- id: bases
  doc: Maximize number of bases in path, not the number of mers (false)
  type: boolean
  inputBinding:
    prefix: --bases
- id: density
  doc: Minimum density of k-mers in mega-read (0.029)
  type: string
  inputBinding:
    prefix: --density
- id: min_length
  doc: Minimum length of a mega-read (100.0)
  type: string
  inputBinding:
    prefix: --min-length
- id: tiling
  doc: '|greedy|maximal|weighted Option for tiling mega-reads (greedy)'
  type: string
  inputBinding:
    prefix: --tiling
- id: trim
  doc: '|match|branch             How to trim mega-read (none)'
  type: string
  inputBinding:
    prefix: --trim
- id: super_reads
  doc: SuperReads sequence file
  type: File
  inputBinding:
    prefix: --superreads
- id: pac_bio
  doc: PacBio read sequence file
  type: File
  inputBinding:
    prefix: --pacbio
outputs: []
cwlVersion: v1.1
baseCommand:
- create_mega_reads
