version 1.0

task Senergy {
  input {
    String etot
  }
  command <<<
    senergy \
      ~{etot}
  >>>
  parameter_meta {
    etot: "EKtot       EPtot        BOND       ANGLE       DIHED      1-4 NB     1-4 EEL     VDWAALS       EELEC      EHBOND  CONSTRAINT      EAMBER"
  }
  output {
    File out_stdout = stdout()
  }
}