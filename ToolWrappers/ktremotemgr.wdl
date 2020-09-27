version 1.0

task Ktremotemgr {
  input {
    Int? limit
    Boolean? px
    Boolean? sx
    String? db
    Boolean? ssb_rd
    String? ssname
    Int? sw_time
    String? sw_name
    Int? tout
    Int? port
    String? host
    Boolean? bin
    Int? xt
    Boolean? uf
    Boolean? uw
    Boolean? ux
    Int? sid
    Int? ts
    Boolean? pt
    Boolean? pv
    Boolean? rm
    Int? max
    Boolean? des
    Boolean? pz
    Boolean? hard
    Int? iv
    Int? m_port
    String clear
    String get
    String var_import
    String inform
    String list
    String match
    String remove
    String report
    String script
    String set
    String slave
    String sync
    String tuner_epl
    String vacuum
    String kt_remote_mgr
    String proc
    String regex
  }
  command <<<
    ktremotemgr \
      ~{clear} \
      ~{get} \
      ~{var_import} \
      ~{inform} \
      ~{list} \
      ~{match} \
      ~{remove} \
      ~{report} \
      ~{script} \
      ~{set} \
      ~{slave} \
      ~{sync} \
      ~{tuner_epl} \
      ~{vacuum} \
      ~{kt_remote_mgr} \
      ~{proc} \
      ~{regex} \
      ~{if defined(limit) then ("-limit " +  '"' + limit + '"') else ""} \
      ~{if (px) then "-px" else ""} \
      ~{if (sx) then "-sx" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (ssb_rd) then "-ssbrd" else ""} \
      ~{if defined(ssname) then ("-ssname " +  '"' + ssname + '"') else ""} \
      ~{if defined(sw_time) then ("-swtime " +  '"' + sw_time + '"') else ""} \
      ~{if defined(sw_name) then ("-swname " +  '"' + sw_name + '"') else ""} \
      ~{if defined(tout) then ("-tout " +  '"' + tout + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if defined(xt) then ("-xt " +  '"' + xt + '"') else ""} \
      ~{if (uf) then "-uf" else ""} \
      ~{if (uw) then "-uw" else ""} \
      ~{if (ux) then "-ux" else ""} \
      ~{if defined(sid) then ("-sid " +  '"' + sid + '"') else ""} \
      ~{if defined(ts) then ("-ts " +  '"' + ts + '"') else ""} \
      ~{if (pt) then "-pt" else ""} \
      ~{if (pv) then "-pv" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if (des) then "-des" else ""} \
      ~{if (pz) then "-pz" else ""} \
      ~{if (hard) then "-hard" else ""} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""} \
      ~{if defined(m_port) then ("-mport " +  '"' + m_port + '"') else ""}
  >>>
  parameter_meta {
    limit: ""
    px: ""
    sx: ""
    db: ""
    ssb_rd: ""
    ssname: ""
    sw_time: ""
    sw_name: ""
    tout: ""
    port: ""
    host: ""
    bin: ""
    xt: ""
    uf: ""
    uw: ""
    ux: ""
    sid: ""
    ts: ""
    pt: ""
    pv: ""
    rm: ""
    max: ""
    des: ""
    pz: ""
    hard: ""
    iv: ""
    m_port: ""
    clear: ""
    get: ""
    var_import: ""
    inform: ""
    list: ""
    match: ""
    remove: ""
    report: ""
    script: ""
    set: ""
    slave: ""
    sync: ""
    tuner_epl: ""
    vacuum: ""
    kt_remote_mgr: ""
    proc: ""
    regex: ""
  }
  output {
    File out_stdout = stdout()
  }
}