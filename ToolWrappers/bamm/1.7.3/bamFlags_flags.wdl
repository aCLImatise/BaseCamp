version 1.0

task BamFlagsFlags {
  input {
    String? flags
  }
  command <<<
    bamFlags flags \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}