version 1.0

task Kctreemgr {
  input {
    Boolean? otr
    String check
    String clear
    String copy
    String create
    String defrag
    String dump
    String get
    String get_bulk
    String var_import
    String inform
    String list
    String load
    String remove
    String remove_bulk
    String set
    String set_bulk
  }
  command <<<
    kctreemgr \
      ~{check} \
      ~{clear} \
      ~{copy} \
      ~{create} \
      ~{defrag} \
      ~{dump} \
      ~{get} \
      ~{get_bulk} \
      ~{var_import} \
      ~{inform} \
      ~{list} \
      ~{load} \
      ~{remove} \
      ~{remove_bulk} \
      ~{set} \
      ~{set_bulk} \
      ~{if (otr) then "-otr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    otr: ""
    check: ""
    clear: ""
    copy: ""
    create: ""
    defrag: ""
    dump: ""
    get: ""
    get_bulk: ""
    var_import: ""
    inform: ""
    list: ""
    load: ""
    remove: ""
    remove_bulk: ""
    set: ""
    set_bulk: ""
  }
  output {
    File out_stdout = stdout()
  }
}