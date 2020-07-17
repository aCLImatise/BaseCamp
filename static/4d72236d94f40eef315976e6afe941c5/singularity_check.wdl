version 1.0

task SingularityCheck {
  input {
    Boolean? low
    Boolean? med
    Boolean? high
    Boolean? tag
    String singularity
  }
  command <<<
    singularity check \
      ~{singularity} \
      ~{true="--low" false="" low} \
      ~{true="--med" false="" med} \
      ~{true="--high" false="" high} \
      ~{true="--tag" false="" tag}
  >>>
  parameter_meta {
    low: "Specify low threshold (all checks, default) "
    med: "Perform medium and high checks"
    high: "Perform only checks at level high"
    tag: "tag to filter checks. default is \"default\"                       Available: default, security, docker, clean"
    singularity: ""
  }
}