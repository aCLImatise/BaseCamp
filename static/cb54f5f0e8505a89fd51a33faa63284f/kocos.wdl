version 1.0

task Kocos.pl {
  input {
    String bigram
  }
  command <<<
    kocos.pl \
      ~{bigram}
  >>>
  parameter_meta {
    bigram: ""
  }
}