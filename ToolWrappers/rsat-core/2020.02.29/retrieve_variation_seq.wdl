version 1.0

task Retrievevariationseq {
  command <<<
    retrieve_variation_seq
  >>>
  output {
    File out_stdout = stdout()
  }
}