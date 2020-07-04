version 1.0

task Pscan {
  input {
    Boolean? emin
    Boolean? emax
  }
  command <<<
    pscan \
      ~{true="-emin" false="" emin} \
      ~{true="-emax" false="" emax}
  >>>
  parameter_meta {
    emin: "integer    [2] Minimum number of elements per fingerprint (Integer from 1 to 20)"
    emax: "integer    [20] Maximum number of elements per fingerprint (Integer up to 20)"
  }
}