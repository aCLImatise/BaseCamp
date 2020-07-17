version 1.0

task Svict {
  input {
    Boolean? i
    Boolean? r
    String svc_it
  }
  command <<<
    svict \
      ~{svc_it} \
      ~{true="-i" false="" i} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    i: ""
    r: ""
    svc_it: "-- Structural Variant in ctDNA Sequencing Data"
  }
}