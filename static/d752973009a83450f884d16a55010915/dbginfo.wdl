version 1.0

task Dbginfo {
  input {
    Boolean? in
  }
  command <<<
    dbginfo \
      ~{if (in) then "-in" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "(1 arg) :    graph file"
  }
  output {
    File out_stdout = stdout()
  }
}