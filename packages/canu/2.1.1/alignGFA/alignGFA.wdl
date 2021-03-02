version 1.0

task AlignGFA {
  input {
    String? load_tigs_tgstore
    Int? bed_format_source
    String? input_graph
    Int? output_graphgraph_either
    Boolean? gfa
    Boolean? bed
    Boolean? increase_chatter
    String? use_computational_threads
    String? opts
  }
  command <<<
    alignGFA \
      ~{opts} \
      ~{if defined(load_tigs_tgstore) then ("-T " +  '"' + load_tigs_tgstore + '"') else ""} \
      ~{if defined(bed_format_source) then ("-C " +  '"' + bed_format_source + '"') else ""} \
      ~{if defined(input_graph) then ("-i " +  '"' + input_graph + '"') else ""} \
      ~{if defined(output_graphgraph_either) then ("-o " +  '"' + output_graphgraph_either + '"') else ""} \
      ~{if (gfa) then "-gfa" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (increase_chatter) then "-V" else ""} \
      ~{if defined(use_computational_threads) then ("-t " +  '"' + use_computational_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    load_tigs_tgstore: "v         Load tigs from tgStore 't', version 'v'."
    bed_format_source: "v         For BED format, the source of the 'chromosomes'.  Similar to -T.\\nConsensus sequence must exist for -T and -C (usually in v=2)"
    input_graph: "Input graph."
    output_graphgraph_either: "Output graph.\\nGraph are either GFA (v1) or BED format."
    gfa: "The input and output graphs are in GFA (v1) format."
    bed: "The input graph is in BED format.  If -C is supplied, the\\noutput will also be BED, and will have updated positions.\\nIf -C is not supplied, the output will be GFA (v1) of the\\noverlaps inferred from the BED positions."
    increase_chatter: "Increase chatter."
    use_computational_threads: "Use 'threads' computational threads."
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}