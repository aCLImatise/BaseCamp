class: CommandLineTool
id: mcxload.cwl
inputs:
- id: in_abc
  doc: input file in abc format
  type: File
  inputBinding:
    prefix: -abc
- id: in_input_file_in__format
  doc: input file in 123 format
  type: long
  inputBinding:
    prefix: '-123'
- id: in_etc
  doc: input file in etc format
  type: File
  inputBinding:
    prefix: -etc
- id: in_etc_a_i
  doc: input file in etc format, auto-increment columns
  type: File
  inputBinding:
    prefix: -etc-ai
- id: in_s_if
  doc: input file in sif format
  type: File
  inputBinding:
    prefix: -sif
- id: in_input_file_numerical
  doc: input file in numerical etc format
  type: long
  inputBinding:
    prefix: '-235'
- id: in_two_three_five_a_i
  doc: input file in numerical etc format, auto-increment columns
  type: long
  inputBinding:
    prefix: -235-ai
- id: in_packed
  doc: input file in packed format
  type: File
  inputBinding:
    prefix: -packed
- id: in_pack_cnum
  doc: Number of columns
  type: long
  inputBinding:
    prefix: -pack-cnum
- id: in_pack_rnum
  doc: Number of rows
  type: long
  inputBinding:
    prefix: -pack-rnum
- id: in_stream_mirror
  doc: add y -> x when x -> y
  type: boolean
  inputBinding:
    prefix: --stream-mirror
- id: in_stream_split
  doc: assume two independent domains (e.g. bipartite graph)
  type: boolean
  inputBinding:
    prefix: --stream-split
- id: in_output_matrix_file
  doc: output matrix to file <fname>
  type: File
  inputBinding:
    prefix: -o
- id: in_strict_tab
  doc: use dom tab in file <fname>, die on miss
  type: File
  inputBinding:
    prefix: -strict-tab
- id: in_restrict_tab
  doc: use dom tab in file <fname>, ignore miss
  type: File
  inputBinding:
    prefix: -restrict-tab
- id: in_extend_tab
  doc: use dom tab in file <fname>, extend if necessary
  type: File
  inputBinding:
    prefix: -extend-tab
- id: in_write_tab
  doc: output domain tab to file <fname>
  type: File
  inputBinding:
    prefix: -write-tab
- id: in_one_two_three_max
  doc: set column and row ranges with -123 option
  type: long
  inputBinding:
    prefix: -123-max
- id: in_strict_tabc
  doc: use col tab in file <fname>, die on miss
  type: File
  inputBinding:
    prefix: -strict-tabc
- id: in_restrict_tabc
  doc: use col tab in file <fname>, ignore miss
  type: File
  inputBinding:
    prefix: -restrict-tabc
- id: in_extend_tabc
  doc: use col tab in file <fname>, extend if necessary
  type: File
  inputBinding:
    prefix: -extend-tabc
- id: in_write_tabc
  doc: output column tab to file <fname>
  type: File
  inputBinding:
    prefix: -write-tabc
- id: in_one_two_three_max_c
  doc: set column range with -123 option
  type: long
  inputBinding:
    prefix: -123-maxc
- id: in_strict_tab_r
  doc: use row tab in file <fname>, die on miss
  type: File
  inputBinding:
    prefix: -strict-tabr
- id: in_restrict_tab_r
  doc: use row tab in file <fname>, ignore miss
  type: File
  inputBinding:
    prefix: -restrict-tabr
- id: in_extend_tab_r
  doc: use row tab in file <fname>, extend if necessary
  type: File
  inputBinding:
    prefix: -extend-tabr
- id: in_write_tab_r
  doc: output row tab to file <fname>
  type: File
  inputBinding:
    prefix: -write-tabr
- id: in_one_two_three_max_r
  doc: set row range with -123 option
  type: long
  inputBinding:
    prefix: -123-maxr
- id: in_re
  doc: deduplicate repeated entries
  type: long
  inputBinding:
    prefix: -re
- id: in_stream_tf
  doc: <func(arg)[, func(arg)]*> apply unary transformations to stream values
  type: boolean
  inputBinding:
    prefix: -stream-tf
- id: in_tf
  doc: <func(arg)[, func(arg)]*>        apply unary transformations to matrix
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_stream_log
  doc: take log of stream value
  type: boolean
  inputBinding:
    prefix: --stream-log
- id: in_stream_neg_log
  doc: take negative log of stream value
  type: boolean
  inputBinding:
    prefix: --stream-neg-log
- id: in_stream_neg_log_one_zero
  doc: take negative log-10 of stream value
  type: boolean
  inputBinding:
    prefix: --stream-neg-log10
- id: in_expect_values
  doc: accept extended SIF or ETC format (label:weight fields)
  type: boolean
  inputBinding:
    prefix: --expect-values
- id: in_ri
  doc: combine input matrix with its transpose
  type: long
  inputBinding:
    prefix: -ri
- id: in_transpose
  doc: transpose result
  type: boolean
  inputBinding:
    prefix: --transpose
- id: in_write_binary
  doc: output matrix in binary format
  type: boolean
  inputBinding:
    prefix: --write-binary
- id: in_debug
  doc: debug
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_help
  doc: print this help
  type: boolean
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_matrix_file
  doc: output matrix to file <fname>
  type: File
  outputBinding:
    glob: $(inputs.in_output_matrix_file)
- id: out_write_tab
  doc: output domain tab to file <fname>
  type: File
  outputBinding:
    glob: $(inputs.in_write_tab)
- id: out_write_tabc
  doc: output column tab to file <fname>
  type: File
  outputBinding:
    glob: $(inputs.in_write_tabc)
- id: out_write_tab_r
  doc: output row tab to file <fname>
  type: File
  outputBinding:
    glob: $(inputs.in_write_tab_r)
cwlVersion: v1.1
baseCommand:
- mcxload
