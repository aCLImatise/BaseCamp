version 1.0

task Coilswrappl {
  command <<<
    coils_wrap_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}