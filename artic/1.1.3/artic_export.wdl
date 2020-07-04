version 1.0

task ArticExport {
  input {
    Boolean? quiet
  }
  command <<<
    artic export \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
  }
}