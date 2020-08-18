class: CommandLineTool
id: ../../../cryfa.cwl
inputs:
- id: key_file_name
  doc: '[KEY_FILE],  --key [KEY_FILE] key file name -- MANDATORY The KEY_FILE would
    contain a password. To make a strong password, the "keygen" program can be  employed
    via the command "./keygen".'
  type: boolean
  inputBinding:
    prefix: -k
- id: _dec_decrypt
  doc: ',  --dec decrypt & unpack'
  type: boolean
  inputBinding:
    prefix: -d
- id: _force_force
  doc: ',  --force force to consider input as non-FASTA/FASTQ Forces Cryfa not to
    compact, but shuffle and encrypt.     If the input is FASTA/FASTQ, it is again
    considered as    non-FASTA/FASTQ, therefore, compaction will be ignored,   but
    shuffling and encryption will be performed.'
  type: boolean
  inputBinding:
    prefix: -f
- id: _verbose_verbose
  doc: ',  --verbose verbose mode (more information)'
  type: boolean
  inputBinding:
    prefix: -v
- id: _stopshuffle_stop
  doc: ',  --stop_shuffle stop shuffling the input'
  type: boolean
  inputBinding:
    prefix: -s
- id: _number_threads
  doc: '[NUMBER],  --thread [NUMBER] number of threads'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- cryfa
