class: CommandLineTool
id: jf_aligner.cwl
inputs:
- id: in_size
  doc: '*Number of k-mers in SuperReads'
  type: long?
  inputBinding:
    prefix: --size
- id: in_mer
  doc: '*Mer size'
  type: long?
  inputBinding:
    prefix: --mer
- id: in_fine_mer
  doc: Mer size for fine alignment
  type: long?
  inputBinding:
    prefix: --fine-mer
- id: in_psa_min
  doc: Min suffix length in SA. Increase for speed up at the cost of memory (13)
  type: long?
  inputBinding:
    prefix: --psa-min
- id: in_threads
  doc: Number of threads (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_stretch_constant
  doc: Constant tolerated stretch between matching k-mer in LIS (10)
  type: long?
  inputBinding:
    prefix: --stretch-constant
- id: in_stretch_factor
  doc: Factor tolerated stretch between matching k-mer in LIS (1.3)
  type: double?
  inputBinding:
    prefix: --stretch-factor
- id: in_stretch_cap
  doc: Maximum distance between two consecutive k-mers in LIS (10000.0)
  type: double?
  inputBinding:
    prefix: --stretch-cap
- id: in_window_size
  doc: Check stretch on every window of k-mer this size (1)
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_forward
  doc: Show all matches forward (reverse super read name if needed) (false)
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_bases_matching
  doc: Filter base on percent of bases matching (17.0)
  type: double?
  inputBinding:
    prefix: --bases-matching
- id: in_mers_matching
  doc: Filter base on percent of k-mer matching (0.0)
  type: double?
  inputBinding:
    prefix: --mers-matching
- id: in_details
  doc: Output files with detail k-mer information
  type: File?
  inputBinding:
    prefix: --details
- id: in_coords
  doc: Output files with math coordinate information (stdout)
  type: File?
  inputBinding:
    prefix: --coords
- id: in_max_match
  doc: Output secondary matches (false)
  type: boolean?
  inputBinding:
    prefix: --max-match
- id: in_no_header
  doc: Do not output header (false)
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_zero_match
  doc: Output header even if query has no match (false)
  type: boolean?
  inputBinding:
    prefix: --zero-match
- id: in_max_count
  doc: Maximum mer count in super read to be used for alignment (5000)
  type: long?
  inputBinding:
    prefix: --max-count
- id: in_unit_igs_lengths
  doc: Length of k-unitigs
  type: File?
  inputBinding:
    prefix: --unitigs-lengths
- id: in_unit_igs_sequences
  doc: Fasta file containing the sequence of the k-unitigs
  type: File?
  inputBinding:
    prefix: --unitigs-sequences
- id: in_compact
  doc: Compact output format (true)
  type: boolean?
  inputBinding:
    prefix: --compact
- id: in_k_mer
  doc: Length of k-mer used to create k-unitigs
  type: long?
  inputBinding:
    prefix: --k-mer
- id: in_super_reads
  doc: SuperReads sequence file
  type: File?
  inputBinding:
    prefix: --superreads
- id: in_pac_bio
  doc: PacBio read sequence file
  type: File?
  inputBinding:
    prefix: --pacbio
- id: in_jf_aligner_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jf_aligner
