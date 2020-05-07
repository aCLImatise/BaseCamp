version 1.0

task CombP {
  input {
    String? pipelinePipeline
  }
  command <<<
    comb-p \
      ~{pipelinePipeline}
  >>>
}