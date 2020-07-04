version 1.0

task HailctlDataproc {
  input {
    Boolean? beta
  }
  command <<<
    hailctl dataproc \
      ~{true="--beta" false="" beta}
  >>>
  parameter_meta {
    beta: "Force use of `beta` in gcloud commands"
  }
}