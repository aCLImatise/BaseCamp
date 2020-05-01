version 1.0

task ConvertToExtent {
  input {
    Boolean vV
    Boolean fullFullQuery
    Boolean fullFullGenomic
    Boolean exonsExons
    Boolean extendedExtended
  }
  command <<<
    convertToExtent \
      ~{true="-v" false="" vV} \
      ~{true="-fullquery" false="" fullFullQuery} \
      ~{true="-fullgenomic" false="" fullFullGenomic} \
      ~{true="-exons" false="" exonsExons} \
      ~{true="-extended" false="" extendedExtended}
  >>>
}