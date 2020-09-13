version 1.0

task ProcessMinoutperl {
  command <<<
    process_minout_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}