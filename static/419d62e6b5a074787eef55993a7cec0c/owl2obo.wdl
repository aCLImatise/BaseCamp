version 1.0

task Owl2obo.pl {
  input {
    Boolean fF
  }
  command <<<
    owl2obo.pl \
      ~{true="-f" false="" fF}
  >>>
}