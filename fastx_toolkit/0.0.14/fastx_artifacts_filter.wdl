version 1.0

task FastxArtifactsFilter {
  input {
    String? o
    File? i
    Boolean? z
    Boolean? v
  }
  command <<<
    fastx_artifacts_filter \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    z: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}