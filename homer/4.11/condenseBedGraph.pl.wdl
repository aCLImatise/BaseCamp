version 1.0

task CondenseBedGraphpl {
  input {
    File? s
    Boolean? log
  }
  command <<<
    condenseBedGraph_pl \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  parameter_meta {
    s: ""
    log: "(output log2)"
  }
  output {
    File out_stdout = stdout()
  }
}