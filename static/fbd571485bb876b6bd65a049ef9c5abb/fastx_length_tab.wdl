version 1.0

task FastxLengthTab.pyOutputTsv {
  input {
    String? i
    String fast_x_length_tab_do_tpy
    String? input_fast_x
    String? output_tsv
  }
  command <<<
    fastx_length_tab.py output_tsv \
      ~{fast_x_length_tab_do_tpy} \
      ~{input_fast_x} \
      ~{output_tsv} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    fast_x_length_tab_do_tpy: ""
    input_fast_x: ""
    output_tsv: ""
  }
}