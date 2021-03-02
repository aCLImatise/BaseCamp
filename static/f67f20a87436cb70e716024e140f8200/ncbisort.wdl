version 1.0

task Ncbisort {
  input {
    String? t
    File? o
    Boolean? tc
    Boolean? cmu
  }
  command <<<
    ncbisort \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (tc) then "-tc" else ""} \
      ~{if (cmu) then "-cmu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    o: ""
    tc: ""
    cmu: ""
  }
  output {
    File out_stdout = stdout()
  }
}