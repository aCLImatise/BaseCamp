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
  parameter_meta {
    query: ""
    reference: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}