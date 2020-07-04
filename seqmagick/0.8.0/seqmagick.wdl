version 1.0

task Seqmagick {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? v
  }
  command <<<
    seqmagick \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    verbose: "Be more verbose. Specify -vv or -vvv for even more"
    quiet: "Suppress output"
    v: ""
  }
}