class: CommandLineTool
id: ../../../soap.cwl
inputs:
- id: str_query_file
  doc: <str>   query a file, *.fq, *.fa
  type: boolean
  inputBinding:
    prefix: -a
- id: str_query_b
  doc: <str>   query b file
  type: boolean
  inputBinding:
    prefix: -b
- id: str_reference_sequences
  doc: <str>   reference sequences indexing table, *.index format
  type: boolean
  inputBinding:
    prefix: -D
- id: str_output_alignment
  doc: <str>   output alignment file(txt)
  type: boolean
  inputBinding:
    prefix: -o
- id: int_match_mode
  doc: "<int>   match mode for each read or the seed part of read, which shouldn't\
    \ contain more than 2 mismaches, [4] 0: exact match only 1: 1 mismatch match only\
    \ 2: 2 mismatch match only 4: find the best hits"
  type: boolean
  inputBinding:
    prefix: -M
- id: str_output_unmapped
  doc: <str>   output unmapped reads file
  type: boolean
  inputBinding:
    prefix: -u
- id: output_reads_reads
  doc: output reads id instead reads name, [none]
  type: boolean
  inputBinding:
    prefix: -t
- id: int_align_bps
  doc: <int>   align the initial n bps as a seed [256] means whole length of read
  type: boolean
  inputBinding:
    prefix: -l
- id: int_filter_lowquality
  doc: <int>   filter low-quality reads containing >n Ns before alignment, [5]
  type: boolean
  inputBinding:
    prefix: -n
- id: var_9
  doc: '[0,1,2] how to report repeat hits, 0=none; 1=random one; 2=all, [1]'
  type: boolean
  inputBinding:
    prefix: -r
- id: int_minimal_insert
  doc: <int>   minimal insert size allowed, [400]
  type: boolean
  inputBinding:
    prefix: -m
- id: int_maximal_insert
  doc: <int>   maximal insert size allowed, [600]
  type: boolean
  inputBinding:
    prefix: -x
- id: str_output_file
  doc: <str>   output file of unpaired alignment hits
  type: boolean
  inputBinding:
    prefix: '-2'
- id: int_maximum_number
  doc: <int>   maximum number of mismatches allowed on a read. [5] bp
  type: boolean
  inputBinding:
    prefix: -v
- id: int_minimal_length
  doc: <int>   minimal alignment length (for soft clip) [255] bp
  type: boolean
  inputBinding:
    prefix: -s
- id: int_one_continuous
  doc: <int>   one continuous gap size allowed on a read. [0] bp
  type: boolean
  inputBinding:
    prefix: -g
- id: long_insert_size
  doc: for long insert size of pair end reads RF. [none](means FR pair)
  type: boolean
  inputBinding:
    prefix: -R
- id: int_will_allow
  doc: <int>   will not allow gap exist inside n-bp edge of a read, default=5
  type: boolean
  inputBinding:
    prefix: -e
- id: int_number_processors
  doc: <int>   number of processors to use, [1]
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- soap
