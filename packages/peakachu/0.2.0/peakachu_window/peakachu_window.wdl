version 1.0

task PeakachuWindow {
  input {
    Int? m
    Boolean? p
    Boolean? r
    Array[String] c
    Array[String] t
  }
  command <<<
    peakachu window \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""} \
      ~{if (p) then "-P" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0"
  }
  parameter_meta {
    m: ""
    p: ""
    r: ""
    c: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}