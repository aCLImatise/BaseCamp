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