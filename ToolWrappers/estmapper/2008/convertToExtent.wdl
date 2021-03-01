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
      ~{if (be_chatty) then "-v" else ""} \
      ~{if (full_query) then "-fullquery" else ""} \
      ~{if (full_genomic) then "-fullgenomic" else ""} \
      ~{if (exons) then "-exons" else ""} \
      ~{if (extended) then "-extended" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    be_chatty: "be chatty"
    full_query: "output the whole query def line"
    full_genomic: "output the whole genomic def line"
    exons: "include exons"
    extended: "include the IDX of each sequence"
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}