version 1.0

task ToArachne {
  input {
    String successful_completion
    String failed_completion
  }
  command <<<
    toArachne \
      ~{successful_completion} \
      ~{failed_completion}
  >>>
  parameter_meta {
    successful_completion: "Successful completion"
    failed_completion: "Failed completion"
  }
}