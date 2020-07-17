version 1.0

task CleanAtac {
  input {
    Boolean? discard_match_it
    String? i
    String? m
  }
  command <<<
    cleanAtac \
      ~{true="-d" false="" discard_match_it} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    discard_match_it: "discard the match if it is below this percent identity"
    i: ""
    m: ""
  }
}