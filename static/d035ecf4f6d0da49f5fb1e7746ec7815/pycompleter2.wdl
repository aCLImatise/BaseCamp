version 1.0

task Pycompleter2 {
  input {
    Boolean? jo
  }
  command <<<
    pycompleter2 \
      ~{if (jo) then "--jo" else ""}
  >>>
  parameter_meta {
    jo: ""
  }
  output {
    File out_stdout = stdout()
  }
}