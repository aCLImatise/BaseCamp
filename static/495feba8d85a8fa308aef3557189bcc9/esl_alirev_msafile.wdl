version 1.0

task EslalirevMsafile {
  input {
    Boolean? options
  }
  command <<<
    esl_alirev msafile \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}