version 1.0

task Humann2SplitStratifiedTable {
  input {
    String iI
    String oO
  }
  command <<<
    humann2_split_stratified_table \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}