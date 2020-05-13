version 1.0

task GenomeBaserOPTIONSGENUSSPECIESOUTDATABASELOCATION {
  input {
    Boolean checkCheckDeps
  }
  command <<<
    GenomeBaser OPTIONS GENUS SPECIES OUT_DATABASE_LOCATION \
      ~{true="--check_deps" false="" checkCheckDeps}
  >>>
}