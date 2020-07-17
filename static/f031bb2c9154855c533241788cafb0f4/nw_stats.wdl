version 1.0

task NwStats {
  input {
    Boolean? fhh
  }
  command <<<
    nw_stats \
      ~{true="-fHh" false="" fhh}
  >>>
  parameter_meta {
    fhh: ""
  }
}