version 1.0

task ModelCommands {
  input {
    Boolean? x
    Boolean? v
    String model
  }
  command <<<
    model commands \
      ~{model} \
      ~{if (x) then "-x" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    x: ""
    v: ""
    model: ""
  }
  output {
    File out_stdout = stdout()
  }
}