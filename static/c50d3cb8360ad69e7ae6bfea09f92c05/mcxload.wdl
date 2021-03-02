version 1.0

task Mcxload {
  input {
    File? abc
    Int? input_file_in__format
    File? etc
    File? etc_a_i
    File? s_if
    Int? input_file_numerical
    Int? two_three_five_a_i
    File? packed
    Int? pack_cnum
    Int? pack_rnum
    Boolean? stream_mirror
    Boolean? stream_split
    File? output_matrix_file
    File? strict_tab
    File? restrict_tab
    File? extend_tab
    File? write_tab
    Int? one_two_three_max
    File? strict_tabc
    File? restrict_tabc
    File? extend_tabc
    File? write_tabc
    Int? one_two_three_max_c
    File? strict_tab_r
    File? restrict_tab_r
    File? extend_tab_r
    File? write_tab_r
    Int? one_two_three_max_r
    Int? re
    Boolean? stream_tf
    Boolean? tf
    Boolean? stream_log
    Boolean? stream_neg_log
    Boolean? stream_neg_log_one_zero
    Boolean? expect_values
    Int? ri
    Boolean? transpose
    Boolean? write_binary
    Boolean? debug
    Boolean? help
  }
  command <<<
    mcxload \
      ~{if defined(abc) then ("-abc " +  '"' + abc + '"') else ""} \
      ~{if defined(input_file_in__format) then ("-123 " +  '"' + input_file_in__format + '"') else ""} \
      ~{if defined(etc) then ("-etc " +  '"' + etc + '"') else ""} \
      ~{if defined(etc_a_i) then ("-etc-ai " +  '"' + etc_a_i + '"') else ""} \
      ~{if defined(s_if) then ("-sif " +  '"' + s_if + '"') else ""} \
      ~{if defined(input_file_numerical) then ("-235 " +  '"' + input_file_numerical + '"') else ""} \
      ~{if defined(two_three_five_a_i) then ("-235-ai " +  '"' + two_three_five_a_i + '"') else ""} \
      ~{if defined(packed) then ("-packed " +  '"' + packed + '"') else ""} \
      ~{if defined(pack_cnum) then ("-pack-cnum " +  '"' + pack_cnum + '"') else ""} \
      ~{if defined(pack_rnum) then ("-pack-rnum " +  '"' + pack_rnum + '"') else ""} \
      ~{if (stream_mirror) then "--stream-mirror" else ""} \
      ~{if (stream_split) then "--stream-split" else ""} \
      ~{if defined(output_matrix_file) then ("-o " +  '"' + output_matrix_file + '"') else ""} \
      ~{if defined(strict_tab) then ("-strict-tab " +  '"' + strict_tab + '"') else ""} \
      ~{if defined(restrict_tab) then ("-restrict-tab " +  '"' + restrict_tab + '"') else ""} \
      ~{if defined(extend_tab) then ("-extend-tab " +  '"' + extend_tab + '"') else ""} \
      ~{if defined(write_tab) then ("-write-tab " +  '"' + write_tab + '"') else ""} \
      ~{if defined(one_two_three_max) then ("-123-max " +  '"' + one_two_three_max + '"') else ""} \
      ~{if defined(strict_tabc) then ("-strict-tabc " +  '"' + strict_tabc + '"') else ""} \
      ~{if defined(restrict_tabc) then ("-restrict-tabc " +  '"' + restrict_tabc + '"') else ""} \
      ~{if defined(extend_tabc) then ("-extend-tabc " +  '"' + extend_tabc + '"') else ""} \
      ~{if defined(write_tabc) then ("-write-tabc " +  '"' + write_tabc + '"') else ""} \
      ~{if defined(one_two_three_max_c) then ("-123-maxc " +  '"' + one_two_three_max_c + '"') else ""} \
      ~{if defined(strict_tab_r) then ("-strict-tabr " +  '"' + strict_tab_r + '"') else ""} \
      ~{if defined(restrict_tab_r) then ("-restrict-tabr " +  '"' + restrict_tab_r + '"') else ""} \
      ~{if defined(extend_tab_r) then ("-extend-tabr " +  '"' + extend_tab_r + '"') else ""} \
      ~{if defined(write_tab_r) then ("-write-tabr " +  '"' + write_tab_r + '"') else ""} \
      ~{if defined(one_two_three_max_r) then ("-123-maxr " +  '"' + one_two_three_max_r + '"') else ""} \
      ~{if defined(re) then ("-re " +  '"' + re + '"') else ""} \
      ~{if (stream_tf) then "-stream-tf" else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (stream_log) then "--stream-log" else ""} \
      ~{if (stream_neg_log) then "--stream-neg-log" else ""} \
      ~{if (stream_neg_log_one_zero) then "--stream-neg-log10" else ""} \
      ~{if (expect_values) then "--expect-values" else ""} \
      ~{if defined(ri) then ("-ri " +  '"' + ri + '"') else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if (write_binary) then "--write-binary" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    abc: "input file in abc format"
    input_file_in__format: "input file in 123 format"
    etc: "input file in etc format"
    etc_a_i: "input file in etc format, auto-increment columns"
    s_if: "input file in sif format"
    input_file_numerical: "input file in numerical etc format"
    two_three_five_a_i: "input file in numerical etc format, auto-increment columns"
    packed: "input file in packed format"
    pack_cnum: "Number of columns"
    pack_rnum: "Number of rows"
    stream_mirror: "add y -> x when x -> y"
    stream_split: "assume two independent domains (e.g. bipartite graph)"
    output_matrix_file: "output matrix to file <fname>"
    strict_tab: "use dom tab in file <fname>, die on miss"
    restrict_tab: "use dom tab in file <fname>, ignore miss"
    extend_tab: "use dom tab in file <fname>, extend if necessary"
    write_tab: "output domain tab to file <fname>"
    one_two_three_max: "set column and row ranges with -123 option"
    strict_tabc: "use col tab in file <fname>, die on miss"
    restrict_tabc: "use col tab in file <fname>, ignore miss"
    extend_tabc: "use col tab in file <fname>, extend if necessary"
    write_tabc: "output column tab to file <fname>"
    one_two_three_max_c: "set column range with -123 option"
    strict_tab_r: "use row tab in file <fname>, die on miss"
    restrict_tab_r: "use row tab in file <fname>, ignore miss"
    extend_tab_r: "use row tab in file <fname>, extend if necessary"
    write_tab_r: "output row tab to file <fname>"
    one_two_three_max_r: "set row range with -123 option"
    re: "deduplicate repeated entries"
    stream_tf: "<func(arg)[, func(arg)]*> apply unary transformations to stream values"
    tf: "<func(arg)[, func(arg)]*>        apply unary transformations to matrix"
    stream_log: "take log of stream value"
    stream_neg_log: "take negative log of stream value"
    stream_neg_log_one_zero: "take negative log-10 of stream value"
    expect_values: "accept extended SIF or ETC format (label:weight fields)"
    ri: "combine input matrix with its transpose"
    transpose: "transpose result"
    write_binary: "output matrix in binary format"
    debug: "debug"
    help: "print this help"
  }
  output {
    File out_stdout = stdout()
    File out_output_matrix_file = "${in_output_matrix_file}"
    File out_write_tab = "${in_write_tab}"
    File out_write_tabc = "${in_write_tabc}"
    File out_write_tab_r = "${in_write_tab_r}"
  }
}