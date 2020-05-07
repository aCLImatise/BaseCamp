version 1.0

task Sff2fastq {
  input {
    Boolean vV
    Boolean nN
    String oO
  }
  command <<<
    sff2fastq \
      ~{true="-v" false="" vV} \
      ~{true="-n" false="" nN} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}