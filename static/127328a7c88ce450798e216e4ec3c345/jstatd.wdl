version 1.0

task Jstatd {
  input {
    String? n
    String? p
    Boolean? nr
  }
  command <<<
    jstatd \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (nr) then "-nr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n: ""
    p: ""
    nr: ""
  }
  output {
    File out_stdout = stdout()
  }
}