version 1.0

task Xmlget {
  input {
    Boolean? xml
  }
  command <<<
    xmlget \
      ~{if (xml) then "-xml" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xml: ": enter xml value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}