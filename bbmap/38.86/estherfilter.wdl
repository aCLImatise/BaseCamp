version 1.0

task Estherfilter.sh {
  input {
    String query
    String reference
    String cut_off
  }
  command <<<
    estherfilter.sh \
      ~{query} \
      ~{reference} \
      ~{cut_off}
  >>>
  parameter_meta {
    query: ""
    reference: ""
    cut_off: ""
  }
}