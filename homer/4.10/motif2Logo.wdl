version 1.0

task Motif2Logo.pl {
  input {
    Boolean pdfPdf
    Boolean nsNs
    Boolean bitBit
    String oO
  }
  command <<<
    motif2Logo.pl \
      ~{true="-pdf" false="" pdfPdf} \
      ~{true="-ns" false="" nsNs} \
      ~{true="-bit" false="" bitBit} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}