version 1.0

task StagMogrify.pl {
  input {
    String? stagStagMogrify
  }
  command <<<
    stag-mogrify.pl \
      ~{stagStagMogrify}
  >>>
}