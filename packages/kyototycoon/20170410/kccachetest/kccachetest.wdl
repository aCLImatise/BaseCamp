version 1.0

task Kccachetest {
  input {
    Boolean? lv
    Int? caps_iz
    Int? cap_cnt
    Int? b_num
    Boolean? tc
    Int? it
    Int? th
    Boolean? rnd
    Boolean? var_8
    Boolean? etc
    String order
    String queue
    String var_12
    String wicked
  }
  command <<<
    kccachetest \
      ~{order} \
      ~{queue} \
      ~{var_12} \
      ~{wicked} \
      ~{if (lv) then "-lv" else ""} \
      ~{if defined(caps_iz) then ("-capsiz " +  '"' + caps_iz + '"') else ""} \
      ~{if defined(cap_cnt) then ("-capcnt " +  '"' + cap_cnt + '"') else ""} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if (tc) then "-tc" else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (var_8) then "-tran" else ""} \
      ~{if (etc) then "-etc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kyototycoon:20170410--h896b458_0"
  }
  parameter_meta {
    lv: ""
    caps_iz: ""
    cap_cnt: ""
    b_num: ""
    tc: ""
    it: ""
    th: ""
    rnd: ""
    var_8: ""
    etc: ""
    order: ""
    queue: ""
    var_12: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}