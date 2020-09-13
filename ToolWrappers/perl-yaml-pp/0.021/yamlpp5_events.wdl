version 1.0

task Yamlpp5events {
  input {
    Boolean? str
  }
  command <<<
    yamlpp5_events \
      ~{if (str) then "-STR" else ""}
  >>>
  parameter_meta {
    str: ""
  }
  output {
    File out_stdout = stdout()
  }
}