version 1.0

task Kcgrasstest {
  input {
    Int? pc_cap
    Int? psi_z
    Int? b_num
    Boolean? tc
    Int? it
    Int? th
    Boolean? rnd
    Boolean? var_7
    Boolean? etc
    String order
    String queue
    String var_11
    String wicked
  }
  command <<<
    kcgrasstest \
      ~{order} \
      ~{queue} \
      ~{var_11} \
      ~{wicked} \
      ~{if defined(pc_cap) then ("-pccap " +  '"' + pc_cap + '"') else ""} \
      ~{if defined(psi_z) then ("-psiz " +  '"' + psi_z + '"') else ""} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if (tc) then "-tc" else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (var_7) then "-tran" else ""} \
      ~{if (etc) then "-etc" else ""}
  >>>
  parameter_meta {
    pc_cap: ""
    psi_z: ""
    b_num: ""
    tc: ""
    it: ""
    th: ""
    rnd: ""
    var_7: ""
    etc: ""
    order: ""
    queue: ""
    var_11: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}