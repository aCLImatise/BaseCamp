version 1.0

task CondenseBedGraphpl {
  input {
    File? log_output_log
  }
  command <<<
    condenseBedGraph_pl \
      ~{if defined(log_output_log) then ("-s " +  '"' + log_output_log + '"') else ""}
  >>>
  parameter_meta {
    log_output_log: "-log (output log2)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}