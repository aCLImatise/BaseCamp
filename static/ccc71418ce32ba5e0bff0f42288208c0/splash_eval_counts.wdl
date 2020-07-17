version 1.0

task SplashEvalCounts {
  input {
    String? s
    String? d
    String? o
  }
  command <<<
    splash eval-counts \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    d: ""
    o: ""
  }
}