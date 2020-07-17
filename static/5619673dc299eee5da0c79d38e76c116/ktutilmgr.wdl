version 1.0

task Ktutilmgr {
  input {
    String? ds
    String? jl
    Boolean? wf
    Boolean? rf
    String date
  }
  command <<<
    ktutilmgr \
      ~{date} \
      ~{if defined(ds) then ("-ds " +  '"' + ds + '"') else ""} \
      ~{if defined(jl) then ("-jl " +  '"' + jl + '"') else ""} \
      ~{true="-wf" false="" wf} \
      ~{true="-rf" false="" rf}
  >>>
  parameter_meta {
    ds: ""
    jl: ""
    wf: ""
    rf: ""
    date: ""
  }
}