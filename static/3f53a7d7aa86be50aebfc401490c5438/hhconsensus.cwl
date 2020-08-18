class: CommandLineTool
id: ../../../hhconsensus.cwl
inputs:
- id: query_alignment_am
  doc: 'query alignment (A2M, A3M, or FASTA), or query HMM          '
  type: File
  inputBinding:
    prefix: -i
- id: append_consensus_sequence
  doc: 'append consensus sequence in FASTA (default=<infile.seq>)   '
  type: File
  inputBinding:
    prefix: -s
- id: o
  doc: 'write alignment with consensus sequence in A3M              '
  type: File
  inputBinding:
    prefix: -o
- id: o_a_three_m
  doc: 'same                                                        '
  type: File
  inputBinding:
    prefix: -oa3m
- id: o_a_two_m
  doc: 'write alignment with consensus sequence in A2M              '
  type: File
  inputBinding:
    prefix: -oa2m
- id: of_as
  doc: 'write alignment with consensus sequence in FASTA            '
  type: File
  inputBinding:
    prefix: -ofas
- id: verbose_mode_screen
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long
  inputBinding:
    prefix: -v
- id: id
  doc: '[0,100] maximum pairwise sequence identity (%) (def=100)   '
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[ filter most diverse set of sequences, keeping at least this     many
    sequences in each block of >50 columns (def=0)'
  type: boolean
  inputBinding:
    prefix: -diff
- id: cov
  doc: '[0,100] minimum coverage with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -cov
- id: qid
  doc: '[0,100] minimum sequence identity with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -qid
- id: qsc
  doc: '[0,100] minimum score per column with query  (def=-20.0)'
  type: boolean
  inputBinding:
    prefix: -qsc
- id: max_seq
  doc: max number of input rows (def=65535)
  type: long
  inputBinding:
    prefix: -maxseq
- id: max_res
  doc: max number of HMM columns (def=20001)
  type: long
  inputBinding:
    prefix: -maxres
outputs: []
cwlVersion: v1.1
baseCommand:
- hhconsensus
