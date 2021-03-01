class: CommandLineTool
id: soap.cwl
inputs:
- id: in_str_query_file
  doc: <str>   query a file, *.fq, *.fa
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_str_query_b
  doc: <str>   query b file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_str_sequences_table
  doc: <str>   reference sequences indexing table, *.index format
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_str_output_alignment
  doc: <str>   output alignment file(txt)
  type: File?
  inputBinding:
    prefix: -o
- id: in_int_match_mode
  doc: "<int>   match mode for each read or the seed part of read, which shouldn't\
    \ contain more than 2 mismaches, [4]\n0: exact match only\n1: 1 mismatch match\
    \ only\n2: 2 mismatch match only\n4: find the best hits"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_str_output_unmapped
  doc: <str>   output unmapped reads file
  type: File?
  inputBinding:
    prefix: -u
- id: in_output_reads_reads
  doc: output reads id instead reads name, [none]
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_int_align_initial
  doc: <int>   align the initial n bps as a seed [256] means whole length of read
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_filter_lowquality
  doc: <int>   filter low-quality reads containing >n Ns before alignment, [5]
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_var_9
  doc: '[0,1,2] how to report repeat hits, 0=none; 1=random one; 2=all, [1]'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_int_minimal_insert
  doc: <int>   minimal insert size allowed, [400]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_maximal_insert
  doc: <int>   maximal insert size allowed, [600]
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_str_output_file
  doc: <str>   output file of unpaired alignment hits
  type: File?
  inputBinding:
    prefix: '-2'
- id: in_int_maximum_number
  doc: <int>   maximum number of mismatches allowed on a read. [5] bp
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_int_minimal_alignment
  doc: <int>   minimal alignment length (for soft clip) [255] bp
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_int_one_continuous
  doc: <int>   one continuous gap size allowed on a read. [0] bp
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_long_insert_size
  doc: for long insert size of pair end reads RF. [none](means FR pair)
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_int_allow_exist
  doc: <int>   will not allow gap exist inside n-bp edge of a read, default=5
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_int_number_use
  doc: <int>   number of processors to use, [1]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_soap_at_genomics_dot_org_dot_cn
  doc: 'Usage:  soap [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_str_output_alignment
  doc: <str>   output alignment file(txt)
  type: File?
  outputBinding:
    glob: $(inputs.in_str_output_alignment)
- id: out_str_output_unmapped
  doc: <str>   output unmapped reads file
  type: File?
  outputBinding:
    glob: $(inputs.in_str_output_unmapped)
- id: out_str_output_file
  doc: <str>   output file of unpaired alignment hits
  type: File?
  outputBinding:
    glob: $(inputs.in_str_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- soap
