version 1.0

task ProcessMdoutperl {
  command <<<
    process_mdout_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}