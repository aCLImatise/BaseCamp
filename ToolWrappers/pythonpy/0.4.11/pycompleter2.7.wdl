version 1.0

task Pycompleter27 {
  input {
    Boolean? ji
  }
  command <<<
    pycompleter2_7 \
      ~{if (ji) then "--ji" else ""}
  >>>
  parameter_meta {
    ji: ""
  }
  output {
    File out_stdout = stdout()
  }
}