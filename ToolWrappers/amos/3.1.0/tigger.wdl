version 1.0

task Tigger {
  input {
    Boolean? write_contig_graphs
    String? verbose_level
  }
  command <<<
    tigger \
      ~{if (write_contig_graphs) then "-g" else ""} \
      ~{if defined(verbose_level) then ("-v " +  '"' + verbose_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_contig_graphs: "Write contig graphs as dot files (fullgraph.dot and Contig-*.dot)"
    verbose_level: "Verbose level"
  }
  output {
    File out_stdout = stdout()
  }
}