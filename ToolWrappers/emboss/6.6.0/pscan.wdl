version 1.0

task Pscan {
  input {
    Boolean? emin
    Boolean? emax
  }
  command <<<
    pscan \
      ~{if (emin) then "-emin" else ""} \
      ~{if (emax) then "-emax" else ""}
  >>>
  parameter_meta {
    emin: "integer    [2] Minimum number of elements per\\nfingerprint (Integer from 1 to 20)"
    emax: "integer    [20] Maximum number of elements per\\nfingerprint (Integer up to 20)"
  }
  output {
    File out_stdout = stdout()
  }
}