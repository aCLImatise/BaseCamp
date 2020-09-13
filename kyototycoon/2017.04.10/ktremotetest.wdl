version 1.0

task Ktremotetest {
  input {
    Int? iv
    Int? xt
    Int? vs
    Int? kp
    Int? tout
    Int? port
    String? host
    Int? th
    Int? it
    Boolean? rnd
    Boolean? bin
    String bulk
    String order
    String usual
    String wicked
  }
  command <<<
    ktremotetest \
      ~{bulk} \
      ~{order} \
      ~{usual} \
      ~{wicked} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""} \
      ~{if defined(xt) then ("-xt " +  '"' + xt + '"') else ""} \
      ~{if defined(vs) then ("-vs " +  '"' + vs + '"') else ""} \
      ~{if defined(kp) then ("-kp " +  '"' + kp + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (bin) then "-bin" else ""}
  >>>
  parameter_meta {
    iv: ""
    xt: ""
    vs: ""
    kp: ""
    tout: ""
    port: ""
    host: ""
    th: ""
    it: ""
    rnd: ""
    bin: ""
    bulk: ""
    order: ""
    usual: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}