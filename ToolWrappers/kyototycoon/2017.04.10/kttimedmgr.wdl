version 1.0

task Kttimedmgr {
  input {
    Boolean? otr
    String bgs_inform
    String check
    String clear
    String copy
    String create
    String dump
    String get
    String var_import
    String inform
    String list
    String load
    String merge
    String recover
    String remove
    String set
    String vacuum
  }
  command <<<
    kttimedmgr \
      ~{bgs_inform} \
      ~{check} \
      ~{clear} \
      ~{copy} \
      ~{create} \
      ~{dump} \
      ~{get} \
      ~{var_import} \
      ~{inform} \
      ~{list} \
      ~{load} \
      ~{merge} \
      ~{recover} \
      ~{remove} \
      ~{set} \
      ~{vacuum} \
      ~{if (otr) then "-otr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    otr: ""
    bgs_inform: ""
    check: ""
    clear: ""
    copy: ""
    create: ""
    dump: ""
    get: ""
    var_import: ""
    inform: ""
    list: ""
    load: ""
    merge: ""
    recover: ""
    remove: ""
    set: ""
    vacuum: ""
  }
  output {
    File out_stdout = stdout()
  }
}