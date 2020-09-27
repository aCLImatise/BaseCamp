version 1.0

task Sarscov2summary {
  input {
    String? p
    String? m
    String? f
    String? s
    String? o
  }
  command <<<
    sarscov2summary \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    m: ""
    f: ""
    s: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}