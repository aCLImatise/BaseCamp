version 1.0

task FalconTask {
  input {
    String? var_task
  }
  command <<<
    falcon-task \
      ~{var_task}
  >>>
  parameter_meta {
    var_task: ""
  }
}