class: CommandLineTool
id: fasta_dinucleotide_shuffle.cwl
inputs:
- id: in_file_name_required
  doc: file name (required)
  type: File
  inputBinding:
    prefix: -f
- id: in_added_shuffled_sequence
  doc: added to shuffled sequence names
  type: string
  inputBinding:
    prefix: -t
- id: in_random_seed_default
  doc: 'random seed; default: 1'
  type: long
  inputBinding:
    prefix: -s
- id: in_make_shuffled_copies
  doc: 'make <n> shuffled copies of each sequence; default: 1'
  type: long
  inputBinding:
    prefix: -c
- id: in_alphabet_file_use
  doc: alphabet file to use non-DNA alphabets
  type: File
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta-dinucleotide-shuffle
