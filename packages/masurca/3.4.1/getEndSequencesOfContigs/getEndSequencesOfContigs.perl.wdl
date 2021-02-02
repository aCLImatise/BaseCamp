version 1.0

task GetEndSequencesOfContigsperl {
  command <<<
    getEndSequencesOfContigs_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}