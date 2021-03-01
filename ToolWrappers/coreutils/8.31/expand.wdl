version 1.0

task Expand {
  input {
    Boolean? initial
  }
  command <<<
    expand \
      ~{if (initial) then "--initial" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    initial: "do not convert tabs after non blanks"
  }
  output {
    File out_stdout = stdout()
  }
}