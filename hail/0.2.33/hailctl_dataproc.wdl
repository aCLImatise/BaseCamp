version 1.0

task HailctlDataproc {
  input {
    Boolean? beta
  }
  command <<<
    hailctl dataproc \
      ~{if (beta) then "--beta" else ""}
  >>>
  parameter_meta {
    beta: "Force use of `beta` in gcloud commands"
  }
  output {
    File out_stdout = stdout()
  }
}