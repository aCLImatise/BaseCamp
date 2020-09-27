class: CommandLineTool
id: create_mega_reads.cwl
inputs:
- id: in_size
  doc: '*Number of k-mers in SuperReads'
  type: long
  inputBinding:
    prefix: --size
- id: in_mer
  doc: '*Mer size'
  type: long
  inputBinding:
    prefix: --mer
- id: in_fine_mer
  doc: Mer size for fine alignment
  type: long
  inputBinding:
    prefix: --fine-mer
- id: in_psa_min
  doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  type: long
  inputBinding:
    prefix: --psa-min
- id: in_unit_igs_lengths
  doc: Length of k-unitigs
  type: File
  inputBinding:
    prefix: --unitigs-lengths
- id: in_unit_igs_sequences
  doc: Fasta file containing the sequence of the k-unitigs
  type: File
  inputBinding:
    prefix: --unitigs-sequences
- id: in_k_mer
  doc: '*Length of k-mer used to create k-unitigs'
  type: long
  inputBinding:
    prefix: --k-mer
- id: in_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_dot
  doc: Write an overlap graph (dot file)
  type: File
  inputBinding:
    prefix: --dot
- id: in_stretch_constant
  doc: Constant tolerated stretch between sequences (10)
  type: long
  inputBinding:
    prefix: --stretch-constant
- id: in_stretch_factor
  doc: Factor tolerated stretch between sequences (1.3)
  type: double
  inputBinding:
    prefix: --stretch-factor
- id: in_stretch_cap
  doc: Maximum distance between two consecutive k-mers in LIS (10000.0)
  type: double
  inputBinding:
    prefix: --stretch-cap
- id: in_window_size
  doc: Check stretch on every window of k-mer this size (1)
  type: long
  inputBinding:
    prefix: --window-size
- id: in_overlap_play
  doc: Play in overlap length between position and k-unitig lengths (1.3)
  type: long
  inputBinding:
    prefix: --overlap-play
- id: in_errors
  doc: Number of average errors slack for overlap computation (3.0)
  type: long
  inputBinding:
    prefix: --errors
- id: in_bases_matching
  doc: Filter base on percent of bases matching (17.0)
  type: double
  inputBinding:
    prefix: --bases-matching
- id: in_mers_matching
  doc: Filter base on percent of k-mer matching (0.0)
  type: double
  inputBinding:
    prefix: --mers-matching
- id: in_max_match
  doc: Use secondary matches (false)
  type: boolean
  inputBinding:
    prefix: --max-match
- id: in_max_count
  doc: Maximum mer count in super read to be used for alignment (5000)
  type: long
  inputBinding:
    prefix: --max-count
- id: in_bases
  doc: Maximize number of bases in path, not the number of mers (false)
  type: boolean
  inputBinding:
    prefix: --bases
- id: in_density
  doc: Minimum density of k-mers in mega-read (0.029)
  type: double
  inputBinding:
    prefix: --density
- id: in_min_length
  doc: Minimum length of a mega-read (100.0)
  type: long
  inputBinding:
    prefix: --min-length
- id: in_tiling
  doc: "|greedy|maximal|weighted\nOption for tiling mega-reads (greedy)"
  type: string
  inputBinding:
    prefix: --tiling
- id: in_trim
  doc: '|match|branch             How to trim mega-read (none)'
  type: string
  inputBinding:
    prefix: --trim
- id: in_super_reads
  doc: SuperReads sequence file
  type: File
  inputBinding:
    prefix: --superreads
- id: in_pac_bio
  doc: PacBio read sequence file
  type: File
  inputBinding:
    prefix: --pacbio
- id: in_create_mega_reads_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- create_mega_reads
