version 1.0

task Kttimedtest {
  input {
    Boolean? rnd
    Boolean? hard
    Int? it
    Int? th
    String map_red
    String misc
    String order
    String queue
    String tran
    String wicked
  }
  command <<<
    kttimedtest \
      ~{map_red} \
      ~{misc} \
      ~{order} \
      ~{queue} \
      ~{tran} \
      ~{wicked} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (hard) then "-hard" else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rnd: ""
    hard: ""
    it: ""
    th: ""
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