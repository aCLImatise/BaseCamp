class: CommandLineTool
id: cryfa.cwl
inputs:
- id: in_key_file_name
  doc: "[KEY_FILE],  --key [KEY_FILE]\nkey file name -- MANDATORY\nThe KEY_FILE would\
    \ contain a password.\nTo make a strong password, the \"keygen\" program can be\n\
    employed via the command \"./keygen\"."
  type: boolean
  inputBinding:
    prefix: -k
- id: in__decdecrypt_unpack
  doc: ",  --dec\ndecrypt & unpack"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__forceforce_consider
  doc: ",  --force\nforce to consider input as non-FASTA/FASTQ\nForces Cryfa not to\
    \ compact, but shuffle and encrypt.\nIf the input is FASTA/FASTQ, it is again\
    \ considered as\nnon-FASTA/FASTQ, therefore, compaction will be ignored,\nbut\
    \ shuffling and encryption will be performed."
  type: boolean
  inputBinding:
    prefix: -f
- id: in__verboseverbose_mode
  doc: ",  --verbose\nverbose mode (more information)"
  type: boolean
  inputBinding:
    prefix: -v
- id: in__stopshufflestop_shuffling
  doc: ",  --stop_shuffle\nstop shuffling the input"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_number_of_threads
  doc: "[NUMBER],  --thread [NUMBER]\nnumber of threads"
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cryfa
