version 1.0

task RsemforebseqfindDE {
  input {
    Int number_of_replicate_for_condition_two
  }
  command <<<
    rsem_for_ebseq_find_DE \
      ~{number_of_replicate_for_condition_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_replicate_for_condition_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}