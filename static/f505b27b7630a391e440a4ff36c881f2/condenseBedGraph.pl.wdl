version 1.0

task CondenseBedGraphpl {
  input {
    File? log
  }
  command <<<
    condenseBedGraph_pl \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: "(output log2)"
  }
  output {
    File out_stdout = stdout()
  }
}