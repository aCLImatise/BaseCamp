version 1.0

task Mercy {
  input {
    Boolean? af
    Boolean? ac
    String? dump
    Boolean? v
    String? opts
  }
  command <<<
    mercy \
      ~{opts} \
      ~{if (af) then "-af" else ""} \
      ~{if (ac) then "-ac" else ""} \
      ~{if defined(dump) then ("-dump " +  '"' + dump + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    af: "fragcounts"
    ac: "contigcounts"
    dump: ""
    v: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}