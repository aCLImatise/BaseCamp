version 1.0

task ExtractProteomeFromGff {
  input {
    String oO
    Int tT
    Boolean fF
    Boolean vV
    String dD
    Boolean wW
  }
  command <<<
    extract_proteome_from_gff \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-w" false="" wW}
  >>>
}