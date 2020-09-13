version 1.0

task TiptoftInputFastq {
  input {
    String tip_to_ft
    String input_dot_fast_q
  }
  command <<<
    tiptoft input_fastq \
      ~{tip_to_ft} \
      ~{input_dot_fast_q}
  >>>
  parameter_meta {
    tip_to_ft: ""
    input_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}