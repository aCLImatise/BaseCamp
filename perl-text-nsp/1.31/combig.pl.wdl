version 1.0

task Combigpl {
  input {
    String bigram
  }
  command <<<
    combig_pl \
      ~{bigram}
  >>>
  parameter_meta {
    bigram: ""
  }
  output {
    File out_stdout = stdout()
  }
}