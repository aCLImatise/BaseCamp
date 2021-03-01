version 1.0

task Kctreetest {
  input {
    Boolean? hard
    Int? it
    Int? th
    Boolean? rnd
    String order
    String queue
    String tran
    String wicked
  }
  command <<<
    kctreetest \
      ~{order} \
      ~{queue} \
      ~{tran} \
      ~{wicked} \
      ~{if (hard) then "-hard" else ""} \
      ~{if defined(it) then ("-it " +  '"' + it + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if (rnd) then "-rnd" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hard: ""
    it: ""
    th: ""
    rnd: ""
    order: ""
    queue: ""
    tran: ""
    wicked: ""
  }
  output {
    File out_stdout = stdout()
  }
}