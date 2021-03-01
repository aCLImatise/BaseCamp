version 1.0

task Textget {
  input {
    Boolean? text
  }
  command <<<
    textget \
      ~{if (text) then "-text" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    text: ": enter text value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}