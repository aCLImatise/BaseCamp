version 1.0

task ExtractJoinableAndNextPassReadsFromJoinKUnitigsperl {
  command <<<
    extractJoinableAndNextPassReadsFromJoinKUnitigs_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}