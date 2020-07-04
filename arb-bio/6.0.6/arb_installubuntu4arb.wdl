version 1.0

task ArbInstallubuntu4arb.sh {
  input {
    String what
  }
  command <<<
    arb_installubuntu4arb.sh \
      ~{what}
  >>>
  parameter_meta {
    what: ""
  }
}