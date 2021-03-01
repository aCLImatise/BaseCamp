version 1.0

task FastxLengthTabpyOutputTsv {
  input {
    String? i
    String fast_x_length_tab_do_tpy
    String? input_fast_x
    String? output_tsv
  }
  command <<<
    fastx_length_tab_py output_tsv \
      ~{fast_x_length_tab_do_tpy} \
      ~{input_fast_x} \
      ~{output_tsv} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: ""
    fast_x_length_tab_do_tpy: ""
    input_fast_x: ""
    output_tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}