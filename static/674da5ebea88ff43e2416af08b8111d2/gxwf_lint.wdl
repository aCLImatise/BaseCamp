version 1.0

task Gxwflint {
  input {
    String? training_topic
    File path
  }
  command <<<
    gxwf_lint \
      ~{path} \
      ~{if defined(training_topic) then ("--training-topic " +  '"' + training_topic + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0"
  }
  parameter_meta {
    training_topic: "If this is a training workflow, specify a training\\ntopic.\\n"
    path: "workflow path"
  }
  output {
    File out_stdout = stdout()
  }
}