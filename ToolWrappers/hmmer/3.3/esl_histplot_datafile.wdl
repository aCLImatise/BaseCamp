version 1.0

task EslhistplotDatafile {
  input {
    Boolean? options
  }
  command <<<
    esl_histplot datafile \
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