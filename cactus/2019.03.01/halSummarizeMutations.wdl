version 1.0

task HalSummarizeMutations {
  input {
    String hal_file
  }
  command <<<
    halSummarizeMutations \
      ~{hal_file}
  >>>
  parameter_meta {
    hal_file: ""
  }
}