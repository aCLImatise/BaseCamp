class: CommandLineTool
id: rgi_kmer_build.cwl
inputs:
- id: in_input_directory
  doc: input directory of prevalence data
  type: Directory?
  inputBinding:
    prefix: --input_directory
- id: in_card
  doc: "fasta file of CARD reference sequences. If missing,\nrun 'rgi card_annotation'\
    \ to generate."
  type: File?
  inputBinding:
    prefix: --card
- id: in_kmer_size_eg
  doc: k-mer size (e.g., 61)
  type: long?
  inputBinding:
    prefix: -k
- id: in_skip
  doc: skips the concatenation and splitting of the CARD*R*V
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_batch_size
  doc: "number of kmers to query at a time using pyahocorasick\n--the greater the\
    \ number the more memory usage\n(default=100,000)\n"
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_sequences_dot
  doc: -n THREADS, --threads THREADS
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
- rgi
- kmer_build
