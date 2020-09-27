class: CommandLineTool
id: hhconsensus.cwl
inputs:
- id: in_query_alignment_am
  doc: query alignment (A2M, A3M, or FASTA), or query HMM
  type: File
  inputBinding:
    prefix: -i
- id: in_append_consensus_sequence
  doc: append consensus sequence in FASTA (default=<infile.seq>)
  type: File
  inputBinding:
    prefix: -s
- id: in_o
  doc: write alignment with consensus sequence in A3M
  type: File
  inputBinding:
    prefix: -o
- id: in_o_a_three_m
  doc: same
  type: File
  inputBinding:
    prefix: -oa3m
- id: in_o_a_two_m
  doc: write alignment with consensus sequence in A2M
  type: File
  inputBinding:
    prefix: -oa2m
- id: in_of_as
  doc: write alignment with consensus sequence in FASTA
  type: File
  inputBinding:
    prefix: -ofas
- id: in_verbose_mode_output
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long
  inputBinding:
    prefix: -v
- id: in_id
  doc: '[0,100] maximum pairwise sequence identity (%) (def=100)'
  type: boolean
  inputBinding:
    prefix: -id
- id: in_diff
  doc: "[0,inf[ filter most diverse set of sequences, keeping at least this\nmany\
    \ sequences in each block of >50 columns (def=0)"
  type: boolean
  inputBinding:
    prefix: -diff
- id: in_cov
  doc: '[0,100] minimum coverage with query (%) (def=0)'
  type: boolean
  inputBinding:
    prefix: -cov
- id: in_qid
  doc: '[0,100] minimum sequence identity with query (%) (def=0)'
  type: boolean
  inputBinding:
    prefix: -qid
- id: in_qsc
  doc: '[0,100] minimum score per column with query  (def=-20.0)'
  type: boolean
  inputBinding:
    prefix: -qsc
- id: in_max_seq
  doc: max number of input rows (def=65535)
  type: long
  inputBinding:
    prefix: -maxseq
- id: in_max_res
  doc: max number of HMM columns (def=20001)
  type: long
  inputBinding:
    prefix: -maxres
- id: in_one_zero_do_tone_one_zero_one_slash_five_six_zero_zero_two_nine
  doc: 'Usage: hhconsensus -i <file> [options]                           '
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hhconsensus
