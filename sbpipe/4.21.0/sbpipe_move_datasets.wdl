version 1.0

task SbpipeMoveDatasets {
  input {
    String nN
    File iI
    File oO
  }
  command <<<
    sbpipe_move_datasets \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}