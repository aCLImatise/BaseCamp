version 1.0

task Brackenbuild {
  input {
    String? t
    String? x
    String? d
    String? l
    String? k
  }
  command <<<
    bracken_build \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    x: ""
    d: ""
    l: ""
    k: ""
  }
  output {
    File out_stdout = stdout()
  }
}