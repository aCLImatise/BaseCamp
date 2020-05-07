version 1.0

task FaCmp {
  input {
    String sortSortName
    String peptidePeptide
    String? afaAfa
    String? bfaBfa
  }
  command <<<
    faCmp \
      ~{afaAfa} \
      ~{if defined(sortSortName) then ("-sortName " +  '"' + sortSortName + '"') else ""} \
      ~{if defined(peptidePeptide) then ("-peptide " +  '"' + peptidePeptide + '"') else ""} \
      ~{bfaBfa}
  >>>
}