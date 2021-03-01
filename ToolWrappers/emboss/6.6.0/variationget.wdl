version 1.0

task Variationget {
  input {
    Boolean? variation
  }
  command <<<
    variationget \
      ~{if (variation) then "-variation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    variation: ": enter variation value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}