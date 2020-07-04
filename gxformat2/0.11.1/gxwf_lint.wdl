version 1.0

task GxwfLint {
  input {
    String? training_topic
    File path
  }
  command <<<
    gxwf-lint \
      ~{path} \
      ~{if defined(training_topic) then ("--training-topic " +  '"' + training_topic + '"') else ""}
  >>>
  parameter_meta {
    training_topic: "If this is a training workflow, specify a training topic."
    path: "workflow path"
  }
}