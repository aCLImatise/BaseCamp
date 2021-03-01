version 1.0

task Kcprototest {
  input {
    Int? it
    Int? th
    Boolean? tree
    Boolean? rnd
    Boolean? var_4
    Boolean? etc
    String order
    String queue
    String var_8
    String wicked
  }
  command <<<
    kcprototest \
      ~{order} \
      ~{queue} \
      ~{var_8} \
      ~{wicked} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (var_4) then "-tran" else ""} \
      ~{if (etc) then "-etc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    it: ""
    th: ""
    tree: ""
    rnd: ""
    var_4: ""
    etc: ""
    order: ""
    queue: ""
    var_8: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}