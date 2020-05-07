class: CommandLineTool
id: longest_path.cwl
inputs:
- id: threads
  doc: Number of threads (1)
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: dot
  doc: Write an overlap graph (dot file)
  type: File
  inputBinding:
    prefix: --dot
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
- id: bases
  doc: Maximize number of bases in path, not the number of mers (false)
  type: boolean
  inputBinding:
    prefix: --bases
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
- id: density
  doc: Minimum density of k-mers (0.029)
  type: string
  inputBinding:
    prefix: --density
- id: min_length
  doc: Minimum length of a mega-read (100.0)
  type: string
  inputBinding:
    prefix: --min-length
- id: tiling
  doc: '|greedy|maximal         Option for tiling mega-reads (greedy)'
  type: string
  inputBinding:
    prefix: --tiling
- id: trim
  doc: '|match|branch             How to trim mega-read (none)'
  type: string
  inputBinding:
    prefix: --trim
outputs: []
cwlVersion: v1.1
baseCommand:
- longest_path
