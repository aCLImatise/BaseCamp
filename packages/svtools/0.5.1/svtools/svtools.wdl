version 1.0

task Svtools {
  input {
    Boolean? support
  }
  command <<<
    svtools \
      ~{if (support) then "--support" else ""}
  >>>
  parameter_meta {
    support: "information on obtaining support"
  }
  output {
    File out_stdout = stdout()
  }
}