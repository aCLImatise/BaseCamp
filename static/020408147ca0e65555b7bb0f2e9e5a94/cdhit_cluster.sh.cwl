class: CommandLineTool
id: cdhit_cluster.sh.cwl
inputs:
- id: in_file_fasta_format
  doc: file in FASTA format
  type: File?
  inputBinding:
    prefix: -i
- id: in_threshold_cluster_default
  doc: threshold to cluster, default 80
  type: long?
  inputBinding:
    prefix: -c
- id: in_command_default_cdhitest
  doc: command, default cd-hit-est
  type: string?
  inputBinding:
    prefix: -H
- id: in_available_memory_mbyte
  doc: available memory (Mbyte), default 400
  type: long?
  inputBinding:
    prefix: -M
- id: in_name
  doc: name
  type: File?
  inputBinding:
    prefix: -n
- id: in_difference_cutoff_default
  doc: difference cutoff, default 0.8
  type: long?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_psicdhit_instead_cdhit
  doc: psi-cd-hit instead of cd-hit
  type: string?
  inputBinding:
    prefix: -p
- id: in_only_circular_sequences
  doc: 'only: circular sequences, default 1. If set to 0 sequence is assumed lineal'
  type: long?
  inputBinding:
    prefix: -C
- id: in_only_gobal_identity
  doc: 'only: gobal identity, -G 0 only takes the first local alignment for clustering'
  type: long?
  inputBinding:
    prefix: -G
- id: in_only_choose_blastn
  doc: 'only: choose blast program, default blastn'
  type: string?
  inputBinding:
    prefix: -b
- id: in_of_threads
  doc: of threads
  type: long?
  inputBinding:
    prefix: -T
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cdhit_cluster.sh
