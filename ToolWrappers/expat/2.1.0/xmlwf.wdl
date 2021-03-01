version 1.0

task Xmlwf {
  input {
    String? e
    String? d
    Boolean? x
    Boolean? w
    Boolean? s
    Boolean? r
    Boolean? p
    Boolean? n
    File var_file
  }
  command <<<
    xmlwf \
      ~{var_file} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (x) then "-x" else ""} \
      ~{if (w) then "-w" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (n) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    e: ""
    d: ""
    x: ""
    w: ""
    s: ""
    r: ""
    p: ""
    n: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}