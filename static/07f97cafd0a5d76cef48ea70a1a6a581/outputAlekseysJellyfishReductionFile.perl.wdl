version 1.0

task OutputAlekseysJellyfishReductionFileperl {
  command <<<
    outputAlekseysJellyfishReductionFile_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}