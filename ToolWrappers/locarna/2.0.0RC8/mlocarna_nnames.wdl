version 1.0

task MlocarnaNnames {
  input {
    Boolean? man
  }
  command <<<
    mlocarna_nnames \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "Full documentation"
  }
  output {
    File out_stdout = stdout()
  }
}