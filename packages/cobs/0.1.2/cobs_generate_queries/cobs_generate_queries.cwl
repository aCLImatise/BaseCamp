class: CommandLineTool
id: cobs_generate_queries.cwl
inputs:
- id: in_file_type
  doc: "\"list\" to read a file list, or filter documents by file\ntype (any, text,\
    \ cortex, fasta, fastq, etc)"
  type: boolean?
  inputBinding:
    prefix: --file-type
- id: in_negative
  doc: "construct this number of random non-existing negative\nqueries, default: 0"
  type: boolean?
  inputBinding:
    prefix: --negative
- id: in_out_file
  doc: output file path
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_positive
  doc: 'pick this number of existing positive queries, default: 0'
  type: boolean?
  inputBinding:
    prefix: --positive
- id: in_seed
  doc: random seed
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_size
  doc: extend positive terms with random data to this size
  type: boolean?
  inputBinding:
    prefix: --size
- id: in_term_size
  doc: 'term size (k-mer size), default: 31'
  type: boolean?
  inputBinding:
    prefix: --term-size
- id: in_threads
  doc: 'number of threads to use, default: max cores'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_true_negative
  doc: "check that negative queries actually are not in the\ndocuments (slow)\n"
  type: boolean?
  inputBinding:
    prefix: --true-negative
- id: in_path
  doc: path to base documents
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: output file path
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- generate-queries
