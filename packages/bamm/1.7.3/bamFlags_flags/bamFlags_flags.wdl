version 1.0

task BamFlagsFlags {
  input {
    String? flags
  }
  command <<<
    bamFlags flags \
      ~{flags}
  >>>
  parameter_meta {
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}