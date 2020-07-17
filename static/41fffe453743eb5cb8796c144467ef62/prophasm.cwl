class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophasm.cwl
inputs:
- id: kmer_size
  doc: K-mer size.
  type: long
  inputBinding:
    prefix: -k
- id: input_fasta_file
  doc: Input FASTA file (can be used multiple times).
  type: File
  inputBinding:
    prefix: -i
- id: output_fasta_file
  doc: Output FASTA file (if used, must be used as many times as -i).
  type: File
  inputBinding:
    prefix: -o
- id: compute_intersection_subtract
  doc: Compute intersection, subtract it, save it.
  type: File
  inputBinding:
    prefix: -x
- id: output_file_kmer
  doc: Output file with k-mer statistics.
  type: File
  inputBinding:
    prefix: -s
- id: silent_mode
  doc: Silent mode.
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- prophasm
