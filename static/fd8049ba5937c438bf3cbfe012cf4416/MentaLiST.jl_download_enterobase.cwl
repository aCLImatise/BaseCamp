class: CommandLineTool
id: MentaLiST.jl_download_enterobase.cwl
inputs:
- id: in_db
  doc: Output file (kmer database)
  type: File
  inputBinding:
    prefix: --db
- id: in_kmer_size_type
  doc: 'Kmer size (type: Int8)'
  type: long
  inputBinding:
    prefix: -k
- id: in_threads
  doc: "Number of threads used in parallel. (type:\nInt64, default: 2)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output folder for the scheme Fasta files.
  type: Directory
  inputBinding:
    prefix: --output
- id: in_scheme
  doc: "Letter identifying which scheme: (S)almonella,\n(Y)ersinia, or (E)scherichia/Shigella."
  type: string
  inputBinding:
    prefix: --scheme
- id: in_type
  doc: "Choose the type: 'cg' or 'wg' for cgMLST or\nwgMLST scheme, respectively."
  type: string
  inputBinding:
    prefix: --type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_db
  doc: Output file (kmer database)
  type: File
  outputBinding:
    glob: $(inputs.in_db)
- id: out_output
  doc: Output folder for the scheme Fasta files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- MentaLiST.jl
- download_enterobase
