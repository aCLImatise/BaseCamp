version 1.0

task FastqClipper {
  input {
    String oO
    String pP
    String mM
    String lL
    Boolean xX
    Boolean eE
    Boolean bB
    String? fastFastQFile
    String? adaptersAdapters
  }
  command <<<
    fastq-clipper \
      ~{fastFastQFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-e" false="" eE} \
      ~{true="-b" false="" bB} \
      ~{adaptersAdapters}
  >>>
}