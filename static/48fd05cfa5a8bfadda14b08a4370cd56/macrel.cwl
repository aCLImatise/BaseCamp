class: CommandLineTool
id: macrel.cwl
inputs:
- id: in_threads
  doc: Number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: path to the output directory
  type: File?
  inputBinding:
    prefix: --output
- id: in_file_output
  doc: path to the output file
  type: File?
  inputBinding:
    prefix: --file-output
- id: in_tag
  doc: Set output tag
  type: string?
  inputBinding:
    prefix: --tag
- id: in_fast_a
  doc: "path to the input FASTA file. This is used in both the\npeptides command (where\
    \ the file is expected to\ncontain short amino-acid sequences) and in the contigs\n\
    command (where the file is expected to contain longer\nnucleotide contigs)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_cluster
  doc: "Whether to pre-cluster the smORFs (at 100% identity)\nto avoid repeats"
  type: long?
  inputBinding:
    prefix: --cluster
- id: in_keep_fast_a_headers
  doc: Keep complete FASTA headers [get-smorfs command]
  type: boolean?
  inputBinding:
    prefix: --keep-fasta-headers
- id: in_tmpdir
  doc: "Temporary directory to use (default: $TMPDIR in the\nenvironment or /tmp)"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_keep_negatives
  doc: Whether to keep non-AMPs in the output
  type: boolean?
  inputBinding:
    prefix: --keep-negatives
- id: in_log_file
  doc: Path to the output logfile
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_append
  doc: "If set, then the log file is appended to (default:\noverwrite existing file)"
  type: boolean?
  inputBinding:
    prefix: --log-append
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to the output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_file_output
  doc: path to the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output)
- id: out_log_file
  doc: Path to the output logfile
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/macrel:1.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- macrel
