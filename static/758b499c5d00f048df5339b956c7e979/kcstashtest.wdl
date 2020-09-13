version 1.0

task Kcstashtest {
  input {
    Boolean? lv
    Int? b_num
    Int? it
    Int? th
    Boolean? rnd
    Boolean? var_5
    Boolean? etc
    String order
    String queue
    String var_9
    String wicked
  }
  command <<<
    kcstashtest \
      ~{order} \
      ~{queue} \
      ~{var_9} \
      ~{wicked} \
      ~{if (lv) then "-lv" else ""} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (var_5) then "-tran" else ""} \
      ~{if (etc) then "-etc" else ""}
  >>>
  parameter_meta {
    lv: ""
    b_num: ""
    it: ""
    th: ""
    rnd: ""
    var_5: ""
    etc: ""
    order: ""
    queue: ""
    var_9: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}