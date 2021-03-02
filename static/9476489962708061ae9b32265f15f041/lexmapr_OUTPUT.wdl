version 1.0

task LexmaprOUTPUT {
  input {
    Boolean? v
    Boolean? no_cache
    Boolean? b
    String? c
    Boolean? f
    Boolean? o
  }
  command <<<
    lexmapr OUTPUT \
      ~{if (v) then "-v" else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lexmapr:0.7.1--py36heb1dbbb_0"
  }
  parameter_meta {
    v: ""
    no_cache: ""
    b: ""
    c: ""
    f: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}