version 1.0

task SingularityVersion {
  input {
    String singularity
  }
  command <<<
    singularity version \
      ~{singularity}
  >>>
  parameter_meta {
    singularity: ""
  }
  output {
    File out_stdout = stdout()
  }
}