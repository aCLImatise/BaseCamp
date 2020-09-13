version 1.0

task Ktutilmgr {
  input {
    Boolean? uf
    Boolean? uw
    Int? ts
    String? oe_nc
    String? i_enc
    Int? tout
    Int? port
    String? host
    Boolean? wf
    Int? jl
    String? ds
    String conf
    String date
    String http
    String rpc
    String ulog
    String proc
  }
  command <<<
    ktutilmgr \
      ~{conf} \
      ~{date} \
      ~{http} \
      ~{rpc} \
      ~{ulog} \
      ~{proc} \
      ~{if (uf) then "-uf" else ""} \
      ~{if (uw) then "-uw" else ""} \
      ~{if defined(ts) then ("-ts " +  '"' + ts + '"') else ""} \
      ~{if defined(oe_nc) then ("-oenc " +  '"' + oe_nc + '"') else ""} \
      ~{if defined(i_enc) then ("-ienc " +  '"' + i_enc + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if (wf) then "-wf" else ""} \
      ~{if defined(jl) then ("-jl " +  '"' + jl + '"') else ""} \
      ~{if defined(ds) then ("-ds " +  '"' + ds + '"') else ""}
  >>>
  parameter_meta {
    uf: ""
    uw: ""
    ts: ""
    oe_nc: ""
    i_enc: ""
    tout: ""
    port: ""
    host: ""
    wf: ""
    jl: ""
    ds: ""
    conf: ""
    date: ""
    http: ""
    rpc: ""
    ulog: ""
    proc: ""
  }
  output {
    File out_stdout = stdout()
  }
}