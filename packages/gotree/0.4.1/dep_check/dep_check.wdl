version 1.0

task DepCheck {
  input {
    Boolean? suppress_nonerror_output
    Boolean? skip_lock
    Boolean? skip_vendor
  }
  command <<<
    dep check \
      ~{if (suppress_nonerror_output) then "-q" else ""} \
      ~{if (skip_lock) then "-skip-lock" else ""} \
      ~{if (skip_vendor) then "-skip-vendor" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    suppress_nonerror_output: "Suppress non-error output (default: false)"
    skip_lock: "Skip checking that imports and Gopkg.toml are in sync with Gopkg.lock (default: false)"
    skip_vendor: "Skip checking that vendor is in sync with Gopkg.lock (default: false)"
  }
  output {
    File out_stdout = stdout()
  }
}