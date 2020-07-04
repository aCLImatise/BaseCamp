version 1.0

task Tigger {
  input {
    Boolean? write_contig_graphs
    String? verbose_level
    String? b
  }
  command <<<
    tigger \
      ~{true="-g" false="" write_contig_graphs} \
      ~{if defined(verbose_level) then ("-v " +  '"' + verbose_level + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    write_contig_graphs: "Write contig graphs as dot files (fullgraph.dot and Contig-*.dot) "
    verbose_level: "Verbose level"
    b: ""
  }
}