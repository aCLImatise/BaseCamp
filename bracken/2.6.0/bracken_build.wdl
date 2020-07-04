version 1.0

task BrackenBuild {
  input {
    String? k
    String? l
    String? d
    String? x
    String? t
    String bracken_build
  }
  command <<<
    bracken-build \
      ~{bracken_build} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    k: ""
    l: ""
    d: ""
    x: ""
    t: ""
    bracken_build: ""
  }
}