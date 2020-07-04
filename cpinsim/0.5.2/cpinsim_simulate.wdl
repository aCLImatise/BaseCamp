version 1.0

task CpinsimSimulate {
  input {
    File? output_graph
    File? output_log
    String proteins
  }
  command <<<
    cpinsim simulate \
      ~{proteins} \
      ~{if defined(output_graph) then ("--output-graph " +  '"' + output_graph + '"') else ""} \
      ~{if defined(output_log) then ("--output-log " +  '"' + output_log + '"') else ""}
  >>>
  parameter_meta {
    output_graph: "Pickle the complete graph at the end of simulation (after last dissociation step) and write it to the given path."
    output_log: "Write some log information of each simulation stept to the given path. If not specified, std-out is used."
    proteins: "Path to a csv-file containing the parsed proteins."
  }
}