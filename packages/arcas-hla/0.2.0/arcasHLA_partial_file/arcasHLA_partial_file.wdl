version 1.0

task ArcasHLAPartialFile {
  input {
    String? g
    String ar_cash_la
    String partial
    String fast_q
  }
  command <<<
    arcasHLA partial file \
      ~{ar_cash_la} \
      ~{partial} \
      ~{fast_q} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.0--0"
  }
  parameter_meta {
    g: ""
    ar_cash_la: ""
    partial: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}