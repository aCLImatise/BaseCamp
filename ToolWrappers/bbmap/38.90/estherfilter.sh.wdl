version 1.0

task Estherfiltersh {
  input {
    String query
    String reference
    String cut_off
  }
  command <<<
    estherfilter_sh \
      ~{query} \
      ~{reference} \
      ~{cut_off}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    query: ""
    reference: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}