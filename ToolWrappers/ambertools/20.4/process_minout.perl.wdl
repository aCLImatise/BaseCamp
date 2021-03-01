version 1.0

task ProcessMinoutperl {
  command <<<
    process_minout_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}