class: CommandLineTool
id: prophasm.cwl
inputs:
- id: in_kmer_size
  doc: K-mer size.
  type: long
  inputBinding:
    prefix: -k
- id: in_input_fasta_file
  doc: Input FASTA file (can be used multiple times).
  type: File
  inputBinding:
    prefix: -i
- id: in_output_fasta_file
  doc: Output FASTA file (if used, must be used as many times as -i).
  type: File
  inputBinding:
    prefix: -o
- id: in_compute_intersection_subtract
  doc: Compute intersection, subtract it, save it.
  type: File
  inputBinding:
    prefix: -x
- id: in_output_file_kmer
  doc: Output file with k-mer statistics.
  type: File
  inputBinding:
    prefix: -s
- id: in_silent_mode
  doc: Silent mode.
  type: boolean
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: Output FASTA file (if used, must be used as many times as -i).
  type: File
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
- id: out_output_file_kmer
  doc: Output file with k-mer statistics.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_kmer)
cwlVersion: v1.1
baseCommand:
- prophasm
