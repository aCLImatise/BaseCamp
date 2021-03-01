version 1.0

task RKPpy {
  input {
    Boolean? at
    Int? k
    String? d
    String? h
    String? a
  }
  command <<<
    RKP_py \
      ~{if (at) then "-at" else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""} \
      ~{if defined(h) then ("-H " +  '"' + h + '"') else ""} \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at: ""
    k: ""
    d: ""
    h: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}