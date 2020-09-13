version 1.0

task Pycompleter {
  input {
    Boolean? si
  }
  command <<<
    pycompleter \
      ~{if (si) then "--si" else ""}
  >>>
  parameter_meta {
    si: ""
  }
  output {
    File out_stdout = stdout()
  }
}