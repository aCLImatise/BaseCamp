version 1.0

task Xsv {
  input {
    Boolean? list
  }
  command <<<
    xsv \
      ~{if (list) then "--list" else ""}
  >>>
  parameter_meta {
    list: "List all commands available."
  }
  output {
    File out_stdout = stdout()
  }
}