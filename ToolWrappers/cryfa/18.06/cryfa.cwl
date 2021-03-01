class: CommandLineTool
id: cryfa.cwl
inputs:
- id: in_key_file_name
  doc: "[KEY_FILE],  --key [KEY_FILE]\nkey file name -- MANDATORY\nThe KEY_FILE would\
    \ contain a password.\nTo make a strong password, the \"keygen\" program can be\n\
    employed via the command \"./keygen\"."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_dec
  doc: decrypt & unpack
  type: boolean?
  inputBinding:
    prefix: --dec
- id: in_force
  doc: "force to consider input as non-FASTA/FASTQ\nForces Cryfa not to compact, but\
    \ shuffle and encrypt.\nIf the input is FASTA/FASTQ, it is again considered as\n\
    non-FASTA/FASTQ, therefore, compaction will be ignored,\nbut shuffling and encryption\
    \ will be performed."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: verbose mode (more information)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_stop_shuffle
  doc: stop shuffling the input
  type: boolean?
  inputBinding:
    prefix: --stop_shuffle
- id: in_number_of_threads
  doc: "[NUMBER],  --thread [NUMBER]\nnumber of threads"
  type: boolean?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cryfa
