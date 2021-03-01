version 1.0

task ProcessMdoutperl {
  command <<<
    process_mdout_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}