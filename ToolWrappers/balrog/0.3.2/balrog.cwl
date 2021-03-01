class: CommandLineTool
id: balrog.cwl
inputs:
- id: in_in
  doc: Path to input fasta or gzipped fasta
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Path to output annotation
  type: File?
  inputBinding:
    prefix: --out
- id: in_max_overlap
  doc: "Maximum allowable overlap between genes in\nnucleotides (default: 60)"
  type: long?
  inputBinding:
    prefix: --max-overlap
- id: in_min_length
  doc: "Minimum allowable gene length in nucleotides\n(default: 90)"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_table
  doc: "Nucleotide to amino acid translation table. 11\nfor most bacteria/archaea,\
    \ 4 for\nMycoplasma/Spiroplasma. (default: 11)"
  type: long?
  inputBinding:
    prefix: --table
- id: in_max_connections
  doc: "Maximum number of forward connections in the\ndirected acyclic graph used\
    \ to find a set of\ncoherent genes in each genome. (default: 50)"
  type: long?
  inputBinding:
    prefix: --max-connections
- id: in_gene_batch_size
  doc: "Batch size for the temporal convolutional\nnetwork used to score genes. (default:\
    \ 200)"
  type: long?
  inputBinding:
    prefix: --gene-batch-size
- id: in_tis_batch_size
  doc: "Batch size for the temporal convolutional\nnetwork used to score TIS. (default:\
    \ 5000)"
  type: long?
  inputBinding:
    prefix: --TIS-batch-size
- id: in_verbose
  doc: "Verbose output, set --verbose=false to suppress\noutput text (default: true)"
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path to output annotation
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/balrog:0.3.2--py37h8270d21_0
cwlVersion: v1.1
baseCommand:
- balrog
