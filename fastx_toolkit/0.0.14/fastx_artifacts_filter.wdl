version 1.0

task FastxArtifactsFilter {
  input {
    Boolean? v
    Boolean? z
    String? i
    String? o
  }
  command <<<
    fastx_artifacts_filter \
      ~{true="-v" false="" v} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    z: ""
    i: ""
    o: ""
  }
}