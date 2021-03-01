class: CommandLineTool
id: macrel.cwl
inputs:
- id: in_threads
  doc: 'Number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: 'path to the output directory (default: None)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_file_output
  doc: 'path to the output file (default: None)'
  type: File?
  inputBinding:
    prefix: --file-output
- id: in_tag
  doc: 'Set output tag (default: macrel.out)'
  type: string?
  inputBinding:
    prefix: --tag
- id: in_fast_a
  doc: "path to the input FASTA file. This is used in both the\npeptides command (where\
    \ the file is expected to\ncontain short amino-acid sequences) and in the contigs\n\
    command (where the file is expected to contain longer\nnucleotide contigs) (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_cluster
  doc: "Whether to pre-cluster the smORFs (at 100% identity)\nto avoid repeats (default:\
    \ False)"
  type: long?
  inputBinding:
    prefix: --cluster
- id: in_keep_fast_a_headers
  doc: "Keep complete FASTA headers [get-smorfs command]\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-fasta-headers
- id: in_tmpdir
  doc: "Temporary directory to use (default: $TMPDIR in the\nenvironment or /tmp)\
    \ (default: None)"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_keep_negatives
  doc: "Whether to keep non-AMPs in the output (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --keep-negatives
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'path to the output directory (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_file_output
  doc: 'path to the output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output)
hints: []
cwlVersion: v1.1
baseCommand:
- macrel
