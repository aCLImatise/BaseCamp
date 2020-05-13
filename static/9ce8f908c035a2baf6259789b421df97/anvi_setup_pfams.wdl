version 1.0

task AnviSetupPfams {
  input {
    String pfamPfamDataDir
    Boolean resetReset
  }
  command <<<
    anvi-setup-pfams \
      ~{if defined(pfamPfamDataDir) then ("--pfam-data-dir " +  '"' + pfamPfamDataDir + '"') else ""} \
      ~{true="--reset" false="" resetReset}
  >>>
}