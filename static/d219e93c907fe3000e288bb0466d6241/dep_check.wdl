version 1.0

task DepCheck {
  input {
    Boolean? suppress_output_default
    Boolean? skip_lock
    Boolean? skip_vendor
  }
  command <<<
    dep check \
      ~{true="-q" false="" suppress_output_default} \
      ~{true="-skip-lock" false="" skip_lock} \
      ~{true="-skip-vendor" false="" skip_vendor}
  >>>
  parameter_meta {
    suppress_output_default: "Suppress non-error output (default: false)"
    skip_lock: "Skip checking that imports and Gopkg.toml are in sync with Gopkg.lock (default: false)"
    skip_vendor: "Skip checking that vendor is in sync with Gopkg.lock (default: false)"
  }
}