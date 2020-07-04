version 1.0

task Combig.pl {
  input {
    String bigram
  }
  command <<<
    combig.pl \
      ~{bigram}
  >>>
  parameter_meta {
    bigram: ""
  }
}