version 1.0

task ArbInstallubuntu4arb.sh {
  input {
    String? whatWhat
  }
  command <<<
    arb_installubuntu4arb.sh \
      ~{whatWhat}
  >>>
}