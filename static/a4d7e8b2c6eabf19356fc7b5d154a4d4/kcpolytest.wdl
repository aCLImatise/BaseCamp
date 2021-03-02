version 1.0

task Kcpolytest {
  input {
    Boolean? rnd
    Int? th
    Boolean? ru
    Boolean? hard
    Int? it
    String index
    String map_red
    String misc
    String order
    String queue
    String tran
    String wicked
  }
  command <<<
    kcpolytest \
      ~{index} \
      ~{map_red} \
      ~{misc} \
      ~{order} \
      ~{queue} \
      ~{tran} \
      ~{wicked} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (ru) then "-ru" else ""} \
      ~{if (hard) then "-hard" else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rnd: ""
    th: ""
    ru: ""
    hard: ""
    it: ""
    index: ""
    map_red: ""
    misc: ""
    order: ""
    queue: ""
    tran: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}