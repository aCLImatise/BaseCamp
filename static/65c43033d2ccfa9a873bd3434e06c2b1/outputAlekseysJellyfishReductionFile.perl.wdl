version 1.0

task OutputAlekseysJellyfishReductionFileperl {
  command <<<
    outputAlekseysJellyfishReductionFile_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}