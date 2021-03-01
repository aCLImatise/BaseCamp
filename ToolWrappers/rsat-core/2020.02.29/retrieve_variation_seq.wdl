version 1.0

task Retrievevariationseq {
  command <<<
    retrieve_variation_seq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}