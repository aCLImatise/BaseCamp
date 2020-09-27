version 1.0

task Kclangctest {
  input {
    Boolean? etc
    Boolean? rnd
    Int? b_num
    Boolean? tran
    String index
    String list
    String var_map
    String order
  }
  command <<<
    kclangctest \
      ~{index} \
      ~{list} \
      ~{var_map} \
      ~{order} \
      ~{if (etc) then "-etc" else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if (tran) then "-tran" else ""}
  >>>
  parameter_meta {
    etc: ""
    rnd: ""
    b_num: ""
    tran: ""
    index: ""
    list: ""
    var_map: ""
    order: ""
  }
  output {
    File out_stdout = stdout()
  }
}