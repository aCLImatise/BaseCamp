version 1.0

task SingularityTest {
  input {
    String singularity
  }
  command <<<
    singularity test \
      ~{singularity}
  >>>
  parameter_meta {
    singularity: ""
  }
}