version 1.0

task SingularityRemoteList {
  input {
    String singularity
    String remote
  }
  command <<<
    singularity remote list \
      ~{singularity} \
      ~{remote}
  >>>
  parameter_meta {
    singularity: ""
    remote: ""
  }
  output {
    File out_stdout = stdout()
  }
}