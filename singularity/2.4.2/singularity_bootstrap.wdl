version 1.0

task SingularityBootstrap {
  input {
    String singularity
  }
  command <<<
    singularity bootstrap \
      ~{singularity}
  >>>
  parameter_meta {
    singularity: ""
  }
}