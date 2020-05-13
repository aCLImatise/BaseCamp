class: CommandLineTool
id: jf_aligner.cwl
inputs:
- id: jf_aligner_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psa_min
  doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  type: string
  inputBinding:
    prefix: --psa-min
- id: threads
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --threads
- id: stretch_constant
  doc: Constant tolerated stretch between matching k-mer in LIS (10)
  type: long
  inputBinding:
    prefix: --stretch-constant
- id: stretch_factor
  doc: Factor tolerated stretch between matching k-mer in LIS (1.3)
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
- id: forward
  doc: Show all matches forward (reverse super read name if needed) (false)
  type: boolean
  inputBinding:
    prefix: --forward
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
- id: details
  doc: Output files with detail k-mer information
  type: File
  inputBinding:
    prefix: --details
- id: coords
  doc: Output files with math coordinate information (stdout)
  type: File
  inputBinding:
    prefix: --coords
- id: max_match
  doc: Output secondary matches (false)
  type: boolean
  inputBinding:
    prefix: --max-match
- id: no_header
  doc: Do not output header (false)
  type: boolean
  inputBinding:
    prefix: --no-header
- id: max_count
  doc: Maximum mer count in super read to be used for alignment (5000)
  type: string
  inputBinding:
    prefix: --max-count
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
- id: compact
  doc: Compact output format (true)
  type: boolean
  inputBinding:
    prefix: --compact
- id: k_mer
  doc: Length of k-mer used to create k-unitigs
  type: string
  inputBinding:
    prefix: --k-mer
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
- jf_aligner
