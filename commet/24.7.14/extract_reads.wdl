version 1.0

task ExtractReads {
  input {
    String oO
    Boolean vV
  }
  command <<<
    extract_reads \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}