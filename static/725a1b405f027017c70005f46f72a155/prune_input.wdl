version 1.0

task PruneInput {
  input {
    Int? d
    String? e
    Boolean? s
    String? o
  }
  command <<<
    prune input \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{true="-s" false="" s} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    e: ""
    s: ""
    o: ""
  }
}