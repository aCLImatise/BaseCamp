version 1.0

task _pscan {
  input {
    Boolean eminEmin
    Boolean emaxEmax
  }
  command <<<
    _pscan \
      ~{true="-emin" false="" eminEmin} \
      ~{true="-emax" false="" emaxEmax}
  >>>
}