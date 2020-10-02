version 1.0

task Drawmodel {
  input {
    Boolean? landscape
    String model_file
    String psfile
  }
  command <<<
    drawmodel \
      ~{model_file} \
      ~{psfile} \
      ~{if (landscape) then "-landscape" else ""}
  >>>
  parameter_meta {
    landscape: "-mod  [n]      Draw first or nth model\\n-reg  [n]      Draw first or nth regularizer\\n-freq [n]      Draw first or nth frequencies\\n"
    model_file: ""
    psfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}