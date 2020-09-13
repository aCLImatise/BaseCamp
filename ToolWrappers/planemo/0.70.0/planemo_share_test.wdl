version 1.0

task PlanemoShareTest {
  input {
    String file_path
  }
  command <<<
    planemo share_test \
      ~{file_path}
  >>>
  parameter_meta {
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}