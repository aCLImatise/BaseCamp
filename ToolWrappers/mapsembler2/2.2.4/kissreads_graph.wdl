version 1.0

task KissreadsGraph {
  input {
    String? this_message_exit
    String? t
    Boolean? input_considered_obtained
  }
  command <<<
    kissreads_graph \
      ~{if defined(this_message_exit) then ("-h " +  '"' + this_message_exit + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (input_considered_obtained) then "-M" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this_message_exit: "this message and exit"
    t: "\\\"c\\\" \\\"coverage\\\"\\n\\\"m\\\" \\\"modify\\\""
    input_considered_obtained: ": the input is considered as a Mapsembler output\\n-o file_name: write obtained graph. Default: standard output\\n-k size_seed: will use seeds of length size_seed. Default: 25.\\n-c min_coverage: Will consider an edge as coherent if coverage (number of reads from all sets using this edge) is at least min_coverage. Default: 2\\n-d max_substitutions: Will map a read on the graph with at most max_substitutions substitutions. Default: 1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}