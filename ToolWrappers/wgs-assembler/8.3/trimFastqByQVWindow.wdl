version 1.0

task TrimFastqByQVWindow {
  input {
    File fast_a_file
    File zero_six_zero_phred_qual_file
    String fast_a_output
    String qual_output
  }
  command <<<
    trimFastqByQVWindow \
      ~{fast_a_file} \
      ~{zero_six_zero_phred_qual_file} \
      ~{fast_a_output} \
      ~{qual_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: ""
    zero_six_zero_phred_qual_file: ""
    fast_a_output: ""
    qual_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}