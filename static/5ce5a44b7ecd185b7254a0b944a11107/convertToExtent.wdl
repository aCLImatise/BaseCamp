version 1.0

task ConvertToExtent {
  input {
    Boolean? be_chatty
    Boolean? full_query
    Boolean? full_genomic
    Boolean? exons
    Boolean? extended
    String in
    String out
  }
  command <<<
    convertToExtent \
      ~{in} \
      ~{out} \
      ~{true="-v" false="" be_chatty} \
      ~{true="-fullquery" false="" full_query} \
      ~{true="-fullgenomic" false="" full_genomic} \
      ~{true="-exons" false="" exons} \
      ~{true="-extended" false="" extended}
  >>>
  parameter_meta {
    be_chatty: "be chatty"
    full_query: "output the whole query def line"
    full_genomic: "output the whole genomic def line"
    exons: "include exons"
    extended: "include the IDX of each sequence"
    in: ""
    out: ""
  }
}