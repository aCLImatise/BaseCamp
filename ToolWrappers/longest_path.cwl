class: CommandLineTool
id: longest_path.cwl
inputs:
- id: in_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: in_dot
  doc: Write an overlap graph (dot file)
  type: File
  inputBinding:
    prefix: --dot
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
- id: in_bases
  doc: Maximize number of bases in path, not the number of mers (false)
  type: boolean
  inputBinding:
    prefix: --bases
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
- id: in_density
  doc: Minimum density of k-mers (0.029)
  type: double
  inputBinding:
    prefix: --density
- id: in_min_length
  doc: Minimum length of a mega-read (100.0)
  type: long
  inputBinding:
    prefix: --min-length
- id: in_tiling
  doc: '|greedy|maximal         Option for tiling mega-reads (greedy)'
  type: string
  inputBinding:
    prefix: --tiling
- id: in_trim
  doc: '|match|branch             How to trim mega-read (none)'
  type: string
  inputBinding:
    prefix: --trim
- id: in_longest_path_overlap_graph_two_cmdline
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- longest_path
