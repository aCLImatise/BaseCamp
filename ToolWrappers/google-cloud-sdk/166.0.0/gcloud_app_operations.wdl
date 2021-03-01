version 1.0

task GcloudAppOperations {
  input {
    String describe
    String list
    String wait
  }
  command <<<
    gcloud app operations \
      ~{describe} \
      ~{list} \
      ~{wait}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    describe: "Describes the operation."
    list: "List the operations."
    wait: "Polls an operation until completion."
  }
  output {
    File out_stdout = stdout()
  }
}