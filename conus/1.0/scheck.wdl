version 1.0

task Scheck {
  input {
    Boolean? assume_khs_reversed
    Boolean? print_output_format
    Boolean? options
    String s_test
    String seq_file_in
  }
  command <<<
    scheck \
      ~{s_test} \
      ~{seq_file_in} \
      ~{if (assume_khs_reversed) then "-i" else ""} \
      ~{if (print_output_format) then "-c" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    assume_khs_reversed: ": Assume KHS is reversed -- as in Infernal output"
    print_output_format: ": print ct output format for predicted structure"
    options: ""
    s_test: ""
    seq_file_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}